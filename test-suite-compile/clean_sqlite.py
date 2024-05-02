import utils
import sql_parser
from sqlparse.tokens import DML, Keyword, DDL
import collections

sqlite_test_suite_path = "../original-test-suites/sqlite"
sqlite_output_path = "../test-suite-generated/sqlite"


"""
all keywords involved: 
{'INSERT', 'REPLACE', 'DELETE', 'SELECT', 'UPDATE', 'DROP', 'CREATE'}
"""

write_keywords = ['INSERT', 'REPLACE', 'DELETE', 'UPDATE', 'CREATE']
read_keywords = ['SELECT']

def read_one_file(file_name):
    file_content = utils.read_file_content(file_name)
    queries = file_content.split(";")
    queries = [query.strip() for query in queries]
    queries = [query for query in queries if query]
    
    return queries


directory_number = 1
test_case_number = 1

def flush_a_batch(queries, write_indices, read_indices):
    global directory_number
    global test_case_number
    output_dir = sqlite_output_path + "/test_collection_" + utils.zfill_number(directory_number, 5)
    utils.create_directory_if_not_exists(output_dir)
    write_queries = [queries[index] for index in write_indices]
    write_tables = set([])
    for write_query in write_queries:
        if write_query.startswith("CREATE"):
            tables = sql_parser.get_tables_involved(write_query, 'sqlite')
            for table in tables:
                write_tables.add(table)
    extra_queries = ["DROP TABLE IF EXISTS " + table for table in write_tables]
    write_queries[:0] = extra_queries
    
    utils.write_list_to_file(write_queries, output_dir + "/db.sql")
    for read_index in read_indices:
        query = queries[read_index]
        test_case_dir = output_dir + "/test_case_" + utils.zfill_number(test_case_number, 10)
        utils.create_directory_if_not_exists(test_case_dir)
        output_file = test_case_dir + "/test.sql"
        utils.write_list_to_file([query], output_file)
        test_case_number += 1
    directory_number += 1
        
file_set = set([])
def process_one_file(file_name):
    global file_set
    queries = read_one_file(file_name)
    write_indices = []
    read_indices = []
    
    for index, query in enumerate(queries):
        keyword = query.split()[0]
        # differentiate writes and reads
        if keyword in write_keywords:
            if len(read_indices) > 0:
                file_set.add(file_name)
                flush_a_batch(queries, write_indices, read_indices)
                read_indices = []
            write_indices.append(index)
        else:
            read_indices.append(index)
    
    if len(read_indices) > 0:
        flush_a_batch(queries, write_indices, read_indices)
        
all_test_files = utils.list_files_under_directory(sqlite_test_suite_path)
for file in all_test_files:
    if file.endswith(".log"):
        process_one_file(file)
