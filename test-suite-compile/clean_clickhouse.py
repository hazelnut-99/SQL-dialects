""" 
SET
SYSTEM.
EXPLAIN
DESCRIBE
"""

import utils
import clickhouse_connect
import sqlparse
import hashlib
import os

comments = ["--", "/*", "#"]


def split_sql_file(file_path):
    with open(file_path, "r") as sql_file:
        sql_statements = sql_file.read()
        lines = sql_statements.split("\n")
        lines = [
            line
            for line in lines
            if not any(line.startswith(comment) for comment in comments)
        ]
        sql_statements = "\n".join(lines)
    parsed_sql = sqlparse.split(sql_statements)
    parsed_sql = [query.strip() for query in parsed_sql]
    parsed_sql = [query for query in parsed_sql if query]
    return parsed_sql


click_house_test_suite_path = "../original-test-suites/ClickHouse/0_stateless"
click_house_output_path = "../test-suite-generated/ClickHouse"


ignore_key_words = ["set", "system.", "explain", "describe"]

""" 
client.command
client.query
"""

directory_number = 4412
test_case_number = 26121

def is_select_query(query):
    return query.startswith("select") or query.startswith("SELECT")


def flush_a_batch(queries, write_indices, read_indices, result_dict):
    global directory_number
    global test_case_number
    write_queries = [queries[index] for index in write_indices]
    
       
    output_dir = click_house_output_path + "/test_collection_" + utils.zfill_number(directory_number, 5)
    utils.create_directory_if_not_exists(output_dir)

    utils.write_list_to_file(write_queries, output_dir + "/db.sql")
    for read_index in read_indices:
        try:
            query = queries[read_index]
            df = result_dict[query]
            test_case_dir = output_dir + "/test_case_" + utils.zfill_number(test_case_number, 10)
            
            output_file = test_case_dir + "/test.sql"
            
            
            result_file = test_case_dir + "/result.csv"
            csv = df.to_csv(index=False, header=False)
            md5sum = hashlib.md5(csv.encode()).hexdigest()
            md5_file = test_case_dir + "/result.md5"
            
            utils.create_directory_if_not_exists(test_case_dir)
            utils.write_list_to_file([query], output_file)
            with open(result_file, 'w') as result_file:
                result_file.write(csv)
            with open(md5_file, 'w') as md5_file:
                md5_file.write(md5sum)
            test_case_number += 1
        except:
            pass
    directory_number += 1

client = clickhouse_connect.get_client(host="localhost", database = "test")
all_files = sorted(utils.list_files_under_directory(click_house_test_suite_path))
for file in all_files:
    if "s3" in file:
        continue
    if file < "../original-test-suites/ClickHouse/0_stateless/02922_respect_nulls_extensive.sql":
        continue
    if not file.endswith(".sql"):
        continue
    db_name = "test2"
    try:
        queries = split_sql_file(file)
    except:
        print("%s has encoding issue" % (file))
        continue
    
    success_list = []
    result_dict = {}
    
    client.command(f"CREATE DATABASE IF NOT EXISTS {db_name}")
    # Use the newly created database
    client.command(f"USE {db_name}")

    
    for query in queries:
        query = query.strip()
        if not query:
            continue
        if any(word for word in ignore_key_words if word in query or word.upper() in query):
            continue
        try:
            if query.startswith("select") or query.startswith("SELECT"):
                
                    df_ref = client.query_df(query)
                    random = False
                    for i in range(2):
                        df = client.query_df(query)
                        if not df_ref.equals(df):
                            random = True
                            print("random")
                            break 
                    if random:
                        continue 
                    
                    result_dict[query] = df_ref
    
            else:
                client.command(query)
            success_list.append(query)
        except KeyboardInterrupt as e:
            exit 
        except:
            pass

    client.command(f"DROP DATABASE IF EXISTS {db_name}")
    
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

    print("%s finished" % file)


# def read_one_file(file_name):
#     with open(file_name, "r") as file:
#         content = file.read()
#         lines = content.split("\n")
#         lines = [
#             line
#             for line in lines
#             if not any(line.startswith(comment) for comment in comments)
#         ]
#         content = "\n".join(lines)
#         queries = content.split(";\n")
#         queries = [query.split("--")[0].strip() for query in queries]
#         queries = [query for query in queries if query]
#     return queries


# """
# ../original-test-suites/ClickHouse/0_stateless/02998_to_milliseconds.sql
# 00189_time_zones_long.sql
# """

# all_files = utils.list_files_under_directory(click_house_test_suite_path)
# all_files = [file for file in all_files if file.endswith(".sql")]


# def get_all_special_files(all_files):
#     special_files = set([])
#     for file in all_files:
#         new_file_name = file[:-4] + ".reference"
#         try:
#             with open(new_file_name, "r") as reference:
#                 reference_content = reference.read()
#                 if len(reference_content) == 0:
#                     special_files.add(file)
#                 if "ENGINE" in reference_content:
#                     special_files.add(file)
#         except Exception:
#             special_files.add(file)

#         try:
#             special_keywords = set(
#                 [

#                     "system",
#                     "SYSTEM",
#                     "explain",
#                     "EXPLAIN",
#                     "set",
#                     "SET",
#                     "DESCRIBE",
#                     "show",
#                     "serverError",
#                     "CREATE DATABASE",
#                 ]
#             )
#             with open(file, "r") as sql_file:
#                 sql_content = sql_file.read()
#                 if any(word in sql_content for word in special_keywords):
#                     special_files.add(file)
#         except Exception:
#             special_files.add(file)
#     return special_files


# special_files = get_all_special_files(all_files)

# print(len(special_files))
# print(len(all_files))

# normal_files = [file for file in all_files if file not in special_files]


# """
# {'drop', 'GRANT', 'desc', 'create', 'USE', 'REVOKE', 'FROM', 'INSERT',
# 'DETACH', 'insert', 'WITH', 'ALTER', 'CREATE', '((SELECT', 'with', 'Select',
# 'optimize', 'truncate', 'DESC', 'SHOW',
# 'ATTACH', '(SELECT', 'SELECT', 'select', 'DROP', 'SELECT\ufeff1'}
# """


# write_key_words = set(
#     [
#         "drop",
#         "grant",
#         "create",
#         "use",
#         "revoke",
#         "insert",
#         "detach",
#         "alter",
#         "optimize",
#         "truncate",
#         "attach",
#     ]
# )


# def is_write(query):
#     query = query.lower()
#     if any(write_keyword in query for write_keyword in write_key_words):
#         return True
#     if "select" not in query and "desc" not in query and "from" not in query:
#         return True
#     return False


# test_case_number = 1


# def flush_a_batch(queries, write_indices, read_indices):
#     global test_case_number

#     for read_index in read_indices:
#         output_dir = (
#             click_house_output_path
#             + "/test_case_"
#             + utils.zfill_number(test_case_number, 10)
#         )
#         utils.create_directory_if_not_exists(output_dir)
#         write_queries = [queries[index] for index in write_indices]
#         if write_queries:
#             utils.write_list_to_file(write_queries, output_dir + "/db.sql")
#         query = queries[read_index]
#         utils.write_list_to_file([query], output_dir + "/test.sql")
#         test_case_number += 1


# def process_one_file(file_name):

#     queries = read_one_file(file_name)
#     write_indices = []
#     read_indices = []

#     for index, query in enumerate(queries):
#         keyword = query.split()[0]
#         if is_write(query):
#             if len(read_indices) > 0:
#                 flush_a_batch(queries, write_indices, read_indices)
#                 read_indices = []
#             write_indices.append(index)
#         else:
#             read_indices.append(index)

#     if len(read_indices) > 0:
#         flush_a_batch(queries, write_indices, read_indices)


# for index, file in enumerate(normal_files):
#     process_one_file(file)
#     print("%d finished %s " % (index, file))
