import db_connection 
import utils
import os
import sys


def generate_result(guest_db, host_db):
    test_collections = utils.list_all_test_collections(utils.TEST_SUITE_PATHS[guest_db])
    
    for collection in test_collections:
        print(collection)
        db_path = collection.split("/")[-1]
        collection_dir = f"../result-compare/{guest_db}/{db_path}"
        host_db_instance = db_connection.get_database_instance(host_db, db_path + "_" + host_db + "_" + guest_db)
        host_result = host_db_instance.run_a_collection(collection)
        host_db_instance.close_connection()
        host_db_instance.delete_database()

        test_cases = host_result.keys()
        
        for test_case in test_cases:
            case_dir = f"{collection_dir}/{test_case}"
            os.makedirs(case_dir, exist_ok=True)
            host_case_result = host_result[test_case]
            host_result_file = f"{case_dir}/{host_db}_result_{host_case_result['result']}.csv"
            utils.write_result_to_file(host_result[test_case], host_result_file)
                
    
def main():
    if len(sys.argv) < 3:
        print("Usage: python example_simple.py <guest_db> <host_dbs>")
        sys.exit(1)

    guest_db = sys.argv[1]
    host_dbs = sys.argv[2]

    host_dbs = host_dbs.split(",")
    
    for host_db in host_dbs:
        generate_result(guest_db, host_db)


if __name__ == '__main__':
    main()