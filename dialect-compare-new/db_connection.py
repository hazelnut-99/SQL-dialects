import os
import glob
from utils import SUCCESS, ERROR, process_df

import sqlite3
import psycopg2
import duckdb
import docker
import clickhouse_connect 
import pandas as pd
import time

client = docker.from_env()


class DB_Instance:
    def __init__(self, database):
        self.database = database
        self.connection = None

    def execute_set_up_script(self, setup_script_file):
        with open(setup_script_file, "r") as script:
            setup_sql = script.read()
            self.execute_query(setup_sql)

    def get_connection(self):
        raise NotImplementedError

    def execute_query(self, sql):
        raise NotImplementedError

    def close_connection(self):
        try:
            if self.connection:
                self.connection.close()
                self.connection = None
        except Exception as e:
            print(f"Error closing connection: {e}")


    def delete_database(self):
        pass

    
    def run_a_test_case(self, collection_path, test_case_name):
        pass
    
    
    def run_a_collection(self, collection_path):
        result_map = {}
        setup_file = collection_path + "/db.sql"
        test_cases = sorted(list(glob.glob(collection_path + "/test_case_*")))
        
        if os.path.exists(setup_file) and os.stat(setup_file).st_size != 0:
            try:
                self.execute_set_up_script(setup_file)
            except Exception as e:
                # no need to continue
                run_result_detail = {
                    "result": ERROR,
                    "result_detail": str(e)
                }
                for test_case in test_cases:
                    result_map[test_case.split("/")[-1]] = run_result_detail
                return result_map
        
        
        for index, test_case in enumerate(test_cases):
            print(index)
            try:
                with open(test_case + "/test.sql", "r") as sql_file:
                    sql_query = sql_file.read()
                    query_result = self.execute_query(sql_query)
                    if not query_result.empty:
                        query_result = process_df(query_result)
                    run_result_detail = run_result_detail = {
                        "result": SUCCESS,
                        "result_detail": query_result
                    }
                    result_map[test_case.split("/")[-1]] = run_result_detail
            except Exception as e:
                run_result_detail = {
                    "result": ERROR,
                    "result_detail": str(e)
                }
                result_map[test_case.split("/")[-1]] = run_result_detail
        return result_map


class SQLiteDB(DB_Instance):
    def get_connection(self):
        try:
            self.connection = sqlite3.connect(self.database)
            return self.connection
        except Exception as e:
            print(f"Error connecting to SQLite database: {e}")
            return None

    def execute_set_up_script(self, setup_script_file):
        if not self.connection:
            self.get_connection()

        with open(setup_script_file, "r") as script:
            setup_sql = script.read()

        self.connection.executescript(setup_sql)

    def execute_query(self, sql):
        if not self.connection:
            self.get_connection()
        
        return pd.read_sql_query(sql, self.connection)

    def delete_database(self):
        try:
            if os.path.exists(self.database):
                os.remove(self.database)
        except Exception as e:
            print(f"Error deleting SQLite database: {e}")



class DuckDB(DB_Instance):
    def get_connection(self):
        try:
            self.connection = duckdb.connect(self.database)
            return self.connection
        except Exception as e:
            print(f"Error connecting to DuckDB database: {e}")
            return None

    def execute_query(self, sql):
        if not self.connection:
            self.get_connection()
        cursor = self.connection.execute(sql)
        return pd.DataFrame(cursor.fetchall()) 


    def delete_database(self):
        try:
            if os.path.exists(self.database):
                os.remove(self.database)
        except Exception as e:
            print(f"Error deleting DuckDB database: {e}")


class PostGreDB(DB_Instance):
    def __init__(self, database):
        super().__init__(database)
        client = docker.from_env()
        command_1 = f'psql -U postgres -c "DROP DATABASE IF EXISTS {database};"'
        command_2 = f'psql -U postgres -c "CREATE DATABASE {database};"'
        container = client.containers.get("ast_postgres")
        container.exec_run(
            cmd=['sh', '-c', command_1]
        )
        container.exec_run(
            cmd=['sh', '-c', command_2]
        )
    
    def get_connection(self):
        connection = psycopg2.connect(
            host='localhost',
            port=54320,
            dbname=f"{self.database}",
            user='postgres',
            password='my_password',
        )
        self.connection = connection

    
    def execute_set_up_script(self, setup_script_file):
        if self.connection is None:
            self.get_connection()
        with open(setup_script_file, 'r') as script_file:
            sql_script = script_file.read()
        cursor = self.connection.cursor()
        cursor.execute(sql_script)
        self.connection.commit()
        cursor.close()
    
    def execute_query(self, sql):
        if self.connection is None:
            self.get_connection()
        cursor = self.connection.cursor()
        cursor.execute(sql)
        result = pd.DataFrame(cursor.fetchall())
        return result
    
    def close_connection(self):
        return self.connection.close()
    
    
    def delete_database(self):
        command = f'psql -U postgres -c "DROP DATABASE {self.database};"'
        container = client.containers.get("ast_postgres")
        container.exec_run(
            cmd=['sh', '-c', command]
        )


class ClickHouseDB(DB_Instance):
    def __init__(self, database):
        super().__init__(database)
        self.client = self.get_connection()
        self.client.command(f"CREATE DATABASE {database};")
        self.client.close()
    
    def get_connection(self):
        client = clickhouse_connect.get_client(host='ht57uux4i3.eu-west-2.aws.clickhouse.cloud', port=8443, username='default', password='4LfArJ0WQyy_0')
        return client
    
    def get_test_connection(self):
        client = clickhouse_connect.get_client(host='ht57uux4i3.eu-west-2.aws.clickhouse.cloud', port=8443, username='default', password='4LfArJ0WQyy_0', database = self.database)
        return client
    
    
    def execute_set_up_script(self, setup_script_file):
        self.client = self.get_test_connection()
        with open(setup_script_file, 'r') as script_file:
            sql_script = script_file.read()
            statements = sql_script.split(";\n")
            for statement in statements:
                statement = statement.strip()
                if not statement:
                    continue
                self.client.command(statement)
        self.client.close()
    
    def execute_query(self, sql):
        self.client = self.get_test_connection()
        sql = sql.strip()
        self.client.command(f"USE {self.database}")
        result =  pd.DataFrame(self.client.query(sql).result_rows)
        self.client.close()
        return result
    
    def close_connection(self):
        return self.client.close()
    
    def delete_database(self):
        self.client = self.get_connection()
        try:
            self.client.command(f"DROP DATABASE IF EXISTS {self.database}")
        except:
            print("delete fails")
        self.client.close()
        


def get_database_instance(db_type, db_name):
    if db_type == "duck":
        return DuckDB(db_name)
    if db_type == "sqlite":
        return SQLiteDB(db_name)
    if db_type == "postgre":
        return PostGreDB(db_name)
    return ClickHouseDB(db_name)
    
