import sqlite3
import psycopg2
import duckdb
import os
import glob

class DB_Instance:
    def __init__(self, database):
        self.database = database
        self.connection = None

    def execute_set_up_script(self, setup_script_file):
        try:
            with open(setup_script_file, 'r') as script:
                setup_sql = script.read()
                self.execute_query(setup_sql)
        except Exception as e:
            print(f"Error executing setup script: {e}")

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

class SQLiteDB(DB_Instance):
    def get_connection(self):
        try:
            self.connection = sqlite3.connect(self.database)
            return self.connection
        except Exception as e:
            print(f"Error connecting to SQLite database: {e}")
            return None
    
    def execute_set_up_script(self, setup_script_file):
        try:
            if not self.connection:
                self.get_connection()

            with open(setup_script_file, 'r') as script:
                setup_sql = script.read()

            self.connection.executescript(setup_sql)

        except Exception as e:
            print(f"Error executing setup script in SQLite database: {e}")

    def execute_query(self, sql):
        try:
            if not self.connection:
                self.get_connection()
            cursor = self.connection.cursor()
            cursor.execute(sql)
            return cursor.fetchall()  # Fetch all results if it's a query
        except Exception as e:
            print(f"Error executing query in SQLite database: {e}")
            return None
    
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
        try:
            if not self.connection:
                self.get_connection()
            cursor = self.connection.execute(sql)
            return cursor.fetchall()  # Fetch all results if it's a query
        except Exception as e:
            print(f"Error executing query in DuckDB database: {e}")
            return None
    
    def delete_database(self):
        try:
            if os.path.exists(self.database):
                os.remove(self.database)
        except Exception as e:
            print(f"Error deleting DuckDB database: {e}")





def custom_key(item):
    # Replace None values with a default value (e.g., a large number) for sorting
    return tuple(float('inf') if x is None else x for x in item)



sqlite = SQLiteDB("sqlite_test.db")
duck = DuckDB("duck_test.db")

query = "select \
	l_extendedprice, \
	l_partkey, \
	l_orderkey, \
	sum(l_extendedprice) over(), \
from lineitem \
order by l_partkey, l_orderkey;"


sqlite.execute_set_up_script("/Users/hongshu/Desktop/eth-master-study/2024-spring/automated-software-testing/projects/SQL-dialects/test-suite-generated/duck/test_collection_07761/db.sql")
duck.execute_set_up_script("/Users/hongshu/Desktop/eth-master-study/2024-spring/automated-software-testing/projects/SQL-dialects/test-suite-generated/duck/test_collection_07761/db.sql")
print(sqlite.execute_query(query))
print(duck.execute_query(query))
duck.close_connection()
sqlite.close_connection()
duck.delete_database()
sqlite.delete_database()