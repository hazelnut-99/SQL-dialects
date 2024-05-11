import utils
import sqlparse
import glob
import pandas as pd
import hashlib
import psycopg2
import docker
import os
import time
import subprocess

postgre_test_suite_path = "../original-test-suites/postgre"
postgre_output_path = "../test-suite-generated/postgre"

def remove_comment_lines(input_string):
    lines = input_string.split("\n")
    filtered_lines = [line for line in lines if not line.strip().startswith("--")]
    result_string = "\n".join(filtered_lines)

    return result_string

postgresql_system_catalog_tables = [
    "pg_aggregate",
    "pg_am",
    "pg_amop",
    "pg_amproc",
    "pg_attrdef",
    "pg_attribute",
    "pg_authid",
    "pg_auth_members",
    "pg_cast",
    "pg_class",
    "pg_collation",
    "pg_constraint",
    "pg_conversion",
    "pg_database",
    "pg_db_role_setting",
    "pg_default_acl",
    "pg_depend",
    "pg_description",
    "pg_enum",
    "pg_event_trigger",
    "pg_extension",
    "pg_foreign_data_wrapper",
    "pg_foreign_server",
    "pg_foreign_table",
    "pg_index",
    "pg_inherits",
    "pg_init_privs",
    "pg_language",
    "pg_largeobject",
    "pg_largeobject_metadata",
    "pg_namespace",
    "pg_opclass",
    "pg_operator",
    "pg_opfamily",
    "pg_parameter_acl",
    "pg_partitioned_table",
    "pg_policy",
    "pg_proc",
    "pg_publication",
    "pg_publication_namespace",
    "pg_publication_rel",
    "pg_range",
    "pg_replication_origin",
    "pg_rewrite",
    "pg_seclabel",
    "pg_sequence",
    "pg_shdepend",
    "pg_shdescription",
    "pg_shseclabel",
    "pg_statistic",
    "pg_statistic_ext",
    "pg_statistic_ext_data",
    "pg_subscription",
    "pg_subscription_rel",
    "pg_tablespace",
    "pg_transform",
    "pg_trigger",
    "pg_ts_config",
    "pg_ts_config_map",
    "pg_ts_dict",
    "pg_ts_parser",
    "pg_ts_template",
    "pg_type",
    "pg_user_mapping",
    "pg_notification_queue_usage",
]

client = docker.from_env()
def create_database_in_postgres_container(container_name, create=True):
    command = f'psql -U postgres -c "CREATE DATABASE my_database;"' if create else \
        f'psql -U postgres -c "DROP DATABASE my_database;"'
    container = client.containers.get(container_name)
    exec_response = container.exec_run(
        cmd=['sh', '-c', command]
    )

    # Check the exit code of the command execution
    exit_code = exec_response.exit_code
    if exit_code == 0:
        pass
    else:
        print(f"Failed to create database. Exit code: {exit_code}")
        print(exec_response)


def setup_db(db_name):
    create_database_in_postgres_container("my_postgres")
    conn = psycopg2.connect(
        host='localhost',
        port=54320,
        dbname="my_database",
        user='postgres',
        password='my_password',
    )
    return conn

def cleanup_db(db_name):
    create_database_in_postgres_container("my_postgres", False)

def split_sql_file(file_path):
    with open(file_path, 'r') as sql_file:
        sql_statements = sql_file.read()
        if "COMMIT" in sql_statements:
            return []
        if "BEGIN" in sql_statements:
            return []
        if "ROLLBACK" in sql_statements:
            return []
    parsed_sql = sqlparse.split(sql_statements)
    parsed_sql = [query.strip() for query in parsed_sql]
    parsed_sql = [query for query in parsed_sql if query]
    return parsed_sql



directory_number = 1
test_case_number = 1
non_deter_cnt = 0
def flush_a_batch(queries, write_indices, read_indices):
    global directory_number
    global test_case_number
    global non_deter_cnt
    output_dir = postgre_output_path + "/test_collection_" + utils.zfill_number(directory_number, 5)
    utils.create_directory_if_not_exists(output_dir)
    write_queries = [queries[index] for index in write_indices]
    conn = setup_db('')
    cursor = conn.cursor()
    try:
        for query in write_queries:
            cursor.execute(query)
    except:
        return
    
    utils.write_list_to_file(write_queries, output_dir + "/db.sql")
    for read_index in read_indices:
        query = queries[read_index]
        cursor.execute(query)
        result = cursor.fetchall()
        df_ref = pd.DataFrame(result)
        cursor.execute(query)
        result = cursor.fetchall()
        df = pd.DataFrame(result)
        if not df_ref.equals(df):
            print("non-deter")
            non_deter_cnt += 1
            break
        test_case_dir = output_dir + "/test_case_" + utils.zfill_number(test_case_number, 10)
        utils.create_directory_if_not_exists(test_case_dir)
        output_file = test_case_dir + "/test.sql"
        utils.write_list_to_file([query], output_file)
        result_file = test_case_dir + "/result.csv"
        csv = df_ref.to_csv(index=False, header=False)
        with open(result_file, 'w') as result_file:
            result_file.write(csv)
        md5sum = hashlib.md5(csv.encode()).hexdigest()
        md5_file = test_case_dir + "/result.md5"
        with open(md5_file, 'w') as md5_file:
            md5_file.write(md5sum)
        test_case_number += 1
    directory_number += 1
    
    conn.close()
    cleanup_db(file.split("/")[-1])
    




all_files = utils.list_files_under_directory(postgre_test_suite_path)
for file in all_files:
    print(file)
    success_list = []
    conn = setup_db(file.split("/")[-1])
    cursor = conn.cursor()
    
    try:
        queries = split_sql_file(file)
    except:
        continue
    for query in queries:
        try:
            if any(table for table in postgresql_system_catalog_tables if table in query):
                continue 
            if "explain" in query or "EXPLAIN" in query:
                continue
            if "set" in query or "SET" in query:
                continue
            if "ROLE" in query or "USER" in query:
                continue
            if "pg_" in query:
                continue
            query = remove_comment_lines(query).strip()
            cursor.execute(query)
            success_list.append(query)
        except:
            pass
    conn.close()
    
    cleanup_db(file.split("/")[-1])
    
    write_indices = []
    read_indices = []
    
    for index, query in enumerate(success_list):
        keyword = query.split()[0]
        # differentiate writes and reads
        if keyword not in set(["select", "SELECT"]):
            if len(read_indices) > 0:
                flush_a_batch(success_list, write_indices, read_indices)
                read_indices = []
            write_indices.append(index)
        else:
            read_indices.append(index)
    
    if len(read_indices) > 0:
        flush_a_batch(success_list, write_indices, read_indices)