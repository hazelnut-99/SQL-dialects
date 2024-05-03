import utils

click_house_test_suite_path = "../original-test-suites/ClickHouse/0_stateless"
click_house_output_path = "../test-suite-generated/ClickHouse"


comments = ["--", "/*", "#"]


def read_one_file(file_name):
    with open(file_name, "r") as file:
        content = file.read()
        lines = content.split("\n")
        lines = [
            line
            for line in lines
            if not any(line.startswith(comment) for comment in comments)
        ]
        content = "\n".join(lines)
        queries = content.split(";\n")
        queries = [query.split("--")[0].strip() for query in queries]
        queries = [query for query in queries if query]
    return queries


"""
../original-test-suites/ClickHouse/0_stateless/02998_to_milliseconds.sql
00189_time_zones_long.sql
"""

all_files = utils.list_files_under_directory(click_house_test_suite_path)
all_files = [file for file in all_files if file.endswith(".sql")]


def get_all_special_files(all_files):
    special_files = set([])
    for file in all_files:
        new_file_name = file[:-4] + ".reference"
        try:
            with open(new_file_name, "r") as reference:
                reference_content = reference.read()
                if len(reference_content) == 0:
                    special_files.add(file)
                if "ENGINE" in reference_content:
                    special_files.add(file)
        except Exception:
            special_files.add(file)

        try:
            special_keywords = set(
                [

                    "system",
                    "SYSTEM",
                    "explain",
                    "EXPLAIN",
                    "set",
                    "SET",
                    "DESCRIBE",
                    "show",
                    "serverError",
                    "CREATE DATABASE",
                ]
            )
            with open(file, "r") as sql_file:
                sql_content = sql_file.read()
                if any(word in sql_content for word in special_keywords):
                    special_files.add(file)
        except Exception:
            special_files.add(file)
    return special_files


special_files = get_all_special_files(all_files)

print(len(special_files))
print(len(all_files))

normal_files = [file for file in all_files if file not in special_files]


""" 
{'drop', 'GRANT', 'desc', 'create', 'USE', 'REVOKE', 'FROM', 'INSERT', 
'DETACH', 'insert', 'WITH', 'ALTER', 'CREATE', '((SELECT', 'with', 'Select', 
'optimize', 'truncate', 'DESC', 'SHOW', 
'ATTACH', '(SELECT', 'SELECT', 'select', 'DROP', 'SELECT\ufeff1'}
"""


write_key_words = set(
    [
        "drop",
        "grant",
        "create",
        "use",
        "revoke",
        "insert",
        "detach",
        "alter",
        "optimize",
        "truncate",
        "attach",
    ]
)


def is_write(query):
    query = query.lower()
    if any(write_keyword in query for write_keyword in write_key_words):
        return True
    if "select" not in query and "desc" not in query and "from" not in query:
        return True
    return False


test_case_number = 1


def flush_a_batch(queries, write_indices, read_indices):
    global test_case_number
    
    for read_index in read_indices:
        output_dir = (
            click_house_output_path
            + "/test_case_"
            + utils.zfill_number(test_case_number, 10)
        )
        utils.create_directory_if_not_exists(output_dir)
        write_queries = [queries[index] for index in write_indices]
        if write_queries:
            utils.write_list_to_file(write_queries, output_dir + "/db.sql")
        query = queries[read_index]
        utils.write_list_to_file([query], output_dir + "/test.sql")
        test_case_number += 1


def process_one_file(file_name):

    queries = read_one_file(file_name)
    write_indices = []
    read_indices = []

    for index, query in enumerate(queries):
        keyword = query.split()[0]
        if is_write(query):
            if len(read_indices) > 0:
                flush_a_batch(queries, write_indices, read_indices)
                read_indices = []
            write_indices.append(index)
        else:
            read_indices.append(index)

    if len(read_indices) > 0:
        flush_a_batch(queries, write_indices, read_indices)


for index, file in enumerate(normal_files):
    process_one_file(file)
    print("%d finished %s " % (index, file))
