import sqlite3
import psycopg2
import duckdb
import os
import glob
from enum import Enum
import json
import docker
import time
import clickhouse_connect 


client = docker.from_env()
class CustomJSONEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, Enum):
            return obj.value
        elif isinstance(obj, RunResultDetail):
            return {
                "result_type": obj.result_type.value,
                "result_detail": obj.result_detail,
                "fail_stage": obj.fail_stage.value if obj.fail_stage else None
            }
        else:
            return super().default(obj)

def custom_decoder(obj):
    if 'result_type' in obj and 'result_detail' in obj:
        result_type = RunResultType(obj['result_type'])
        result_detail = obj['result_detail']
        fail_stage = FailStageEnum(obj['fail_stage']) if 'fail_stage' in obj else None
        return RunResultDetail(result_type, result_detail, fail_stage)
    return obj

        
class RunResultType(Enum):
    SUCCESS = "success"
    ERROR = "error"


class CompareResultType(Enum):
    SAME = "same"
    ERROR = "error"
    DIFFERENT = "different"


class FailStageEnum(Enum):
    SET_UP = "set_up"
    QUERY = "query"


class RunResultDetail:
    def __init__(self, result_type, result_detail, fail_stage=None):
        self.result_type = result_type
        self.result_detail = result_detail
        self.fail_stage = fail_stage

    def __str__(self):
        return f"Result Type: {self.result_type}, Result Detail: {self.result_detail}, fail stage: {self.fail_stage}"


def get_run_result_stats(run_result_details):
    success_num = len([
        result for result in run_result_details if result.result_type == RunResultType.SUCCESS
    ])
    error_num = len([
        result for result in run_result_details if result.result_type == RunResultType.ERROR
    ])
    return success_num, error_num


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

    # todo handle possible errors
    def run_a_collection(self, collection_path):
        result_map = {}
        setup_file = collection_path + "/db.sql"
        test_cases = list(glob.glob(collection_path + "/test_case_*"))

        if os.path.exists(setup_file) and os.stat(setup_file).st_size != 0:
            try:
                self.execute_set_up_script(setup_file)
            except Exception as e:
                # no need to continue
                run_result_detail = RunResultDetail(
                    RunResultType.ERROR, str(e), FailStageEnum.SET_UP
                )
                for test_case in test_cases:
                    result_map[test_case.split("/")[-1]] = run_result_detail
                return result_map

        for test_case in test_cases:
            try:
                with open(test_case + "/test.sql", "r") as sql_file:
                    sql_query = sql_file.read()
                    query_result = self.execute_query(sql_query)
                    run_result_detail = RunResultDetail(
                        RunResultType.SUCCESS, query_result
                    )
                    result_map[test_case.split("/")[-1]] = run_result_detail
            except Exception as e:
                run_result_detail = RunResultDetail(
                    RunResultType.ERROR, str(e), FailStageEnum.QUERY
                )
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
        cursor = self.connection.cursor()
        cursor.execute(sql)
        return cursor.fetchall()

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
        return cursor.fetchall()  # Fetch all results if it's a query

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
        container = client.containers.get("my_postgres")
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
        result = cursor.fetchall()
        return result
    
    def close_connection(self):
        return self.connection.close()
    
    
    def delete_database(self):
        command = f'psql -U postgres -c "DROP DATABASE {self.database};"'
        container = client.containers.get("my_postgres")
        container.exec_run(
            cmd=['sh', '-c', command]
        )

class ClickHouseDB(DB_Instance):
    def __init__(self, database):
        super().__init__(database)
        self.client = self.get_connection()
        self.client.command(f"SET max_execution_time = 5")
        self.client.command(f"CREATE DATABASE IF NOT EXISTS {database}")
        client.database = database
    
    def get_connection(self):
        client = clickhouse_connect.get_client(host='localhost', port=18123)
        return client
    
    
    def execute_set_up_script(self, setup_script_file):
        with open(setup_script_file, 'r') as script_file:
            sql_script = script_file.read()
            statements = sql_script.split(";")
            for statement in statements:
                self.client.command(statement, use_database=True)
    
    def execute_query(self, sql):
        return self.client.query(sql).result_rows
    
    def delete_database(self):
        self.client.command(f"DROP DATABASE IF EXISTS {self.database}")




def get_database_instance(db_type, db_name):
    if db_type == "duck":
        return DuckDB(db_name)
    if db_type == "sqlite":
        return SQLiteDB(db_name)
    if db_type == "postgre":
        return PostGreDB(db_name)
    return ClickHouseDB(db_name)
    
