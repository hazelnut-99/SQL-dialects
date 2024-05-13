""" 
examples:
SELECT tconst, list(principals) as principals 
FROM parquet_scan('data/parquet-testing/bug3734.parquet') GROUP BY 1 limit 10;

PRAGMA enable_verification;
PRAGMA verify_external;

SET disabled_optimizers to 'compressed_materialization';
load __TEST_DIR__/pivot_storage.db

error ones;

"""
import duckdb
import sqlparse
import os
import utils
import hashlib

duck_test_suite_path = "../original-test-suites/duck"
duck_output_path = "../test-suite-generated/duck"

def split_sql_file(file_path):
    with open(file_path, 'r') as sql_file:
        sql_statements = sql_file.read()
    parsed_sql = sqlparse.split(sql_statements)
    parsed_sql = [query.strip() for query in parsed_sql]
    parsed_sql = [query for query in parsed_sql if query]
    return parsed_sql


def is_select_query(query):
    return query.startswith("select") or query.startswith("SELECT")


all_files = utils.list_files_under_directory(duck_test_suite_path)

ignore_words = ["PRAGMA", "SET"]




directory_number = 7837
test_case_number = 16276

def flush_a_batch(queries, write_indices, read_indices, result_dict):
    global directory_number
    global test_case_number
    
    write_queries = [queries[index] for index in write_indices]
    

       
    output_dir = duck_output_path + "/test_collection_" + utils.zfill_number(directory_number, 5)
    utils.create_directory_if_not_exists(output_dir)

    utils.write_list_to_file(write_queries, output_dir + "/db.sql")
    for read_index in read_indices:
        query = queries[read_index]
        df = result_dict[query]
        test_case_dir = output_dir + "/test_case_" + utils.zfill_number(test_case_number, 10)
        utils.create_directory_if_not_exists(test_case_dir)
        output_file = test_case_dir + "/test.sql"
        utils.write_list_to_file([query], output_file)
        
        result_file = test_case_dir + "/result.csv"
        csv = df.to_csv(index=False, header=False)
        with open(result_file, 'w') as result_file:
            result_file.write(csv)
        md5sum = hashlib.md5(csv.encode()).hexdigest()
        md5_file = test_case_dir + "/result.md5"
        with open(md5_file, 'w') as md5_file:
            md5_file.write(md5sum)
        test_case_number += 1
    directory_number += 1



for file in sorted(all_files):
    if not file.endswith(".log"):
        continue
    print(file)
    db_name = os.path.basename(file).split(".")[0] + ".db"
    # if db_name == "duck_aggregate.db" or db_name == "duck_cast.db" or db_name == "duck_insert.db":
    #     continue
    if not db_name == "duck_aggregate.db":
        continue
    queries = split_sql_file(file)
    success_list = []
    result_dict = {}
    with duckdb.connect(db_name) as con:
        for query in queries:
            if "data/" in query or "load" in query:
                continue
            if any(word for word in ignore_words if query.startswith(word) or query.startswith(word.lower())):
                continue
            random = False
            try:
                if query.startswith("select") or query.startswith("SELECT"):
                    base_df = con.sql(query).df()
                    for i in range(2):
                        df = con.sql(query).df()
                        if not base_df.equals(df):
                            random = True 
                            break
                    if random:
                        continue
                    else:
                        result_dict[query] = base_df
                else:
                    con.sql(query)
                success_list.append(query)
            except:
                pass
    os.remove(db_name)
    
    write_indices = []
    read_indices = []
    
    for index, query in enumerate(success_list):
        if not is_select_query(query):
            if len(read_indices) > 0:
                flush_a_batch(success_list, write_indices, read_indices, result_dict)
                read_indices = []
            write_indices.append(index)
        else:
            read_indices.append(index)
    if len(read_indices) > 0:
        flush_a_batch(success_list, write_indices, read_indices, result_dict)
        
        



