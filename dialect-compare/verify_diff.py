from db_connection import *



test_suite_paths = {
    "duck": "../test-suite-generated/duck",
    "sqlite": "../test-suite-generated/sqlite",
    "postgre": "../test-suite-generated/postgre",
    "click":  "../test-suite-generated/ClickHouse"
}


def run_a_test_case(guest_db, host_db, test_case):
    test_collection_name = "test_collection_" + test_case.split("_")[2]
    test_suite_path = test_suite_paths[guest_db]
    
    host_db = get_database_instance(host_db, host_db + "_test")
    result = host_db.run_a_test_case(test_suite_path + "/" + test_collection_name, test_case)
    
    host_db.close_connection()
    host_db.delete_database()
    
    return result



diff_cases = ["click_duck", "click_sqlite", "duck_postgre", "duck_sqlite" \
    , 'postgre_duck', "postgre_sqlite"]


for diff_case in diff_cases:
    guest_db, host_db = diff_case.split("_")
    
    with open("diff_cases/" + diff_case, "r") as cases_file, open("diff_cases/" + diff_case + "_details.txt", 'w') as write_file:
        cases = cases_file.read()
        cases = cases.split("\n")
        for case in cases:
            guest_db_result = run_a_test_case(guest_db, host_db, case)
            host_db_result = run_a_test_case(guest_db, guest_db, case)
            write_file.write("=============%s from %s\n" % (case, guest_db))
            write_file.write("%s result: %s\n" % (guest_db, guest_db_result))
            write_file.write("%s result: %s\n" % (host_db, host_db_result))
