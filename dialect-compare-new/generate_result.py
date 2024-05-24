import db_connection 
import utils
import os


for guest_db in utils.ALL_DBS:
    test_collections = utils.list_all_test_collections(utils.TEST_SUITE_PATHS[guest_db])[:1]
    for collection in test_collections:
    
        db_path = collection.split("/")[-1]
        
        collection_dir = f"../result-compare/{guest_db}/{db_path}"
        os.makedirs(collection_dir, exist_ok=True)
        
        guest_db_instance = db_connection.get_database_instance(guest_db, db_path + "_" + guest_db)
        guest_result = guest_db_instance.run_a_collection(collection)
        guest_db_instance.close_connection()
        guest_db_instance.delete_database()
        
        for host_db in utils.ALL_DBS:
            if guest_db == host_db:
                continue
            
            host_db_instance = db_connection.get_database_instance(host_db, db_path + "_" + host_db)
            host_result = host_db_instance.run_a_collection(collection)
            host_db_instance.close_connection()
            host_db_instance.delete_database()
            
            # host result, guest result
            test_cases = host_result.keys()
            
            for test_case in test_cases:
                case_dir = f"{collection_dir}/{test_case}"
                os.makedirs(case_dir, exist_ok=True)
                
                guest_result_file = f"{case_dir}/{guest_db}_result.csv"
                host_result_file = f"{case_dir}/{host_db}_result.csv"
                
                if not os.path.exists(guest_result_file):
                    print("result")
                    print(guest_result[test_case]["result_detail"])
                    utils.write_df_to_csv(guest_result[test_case]["result_detail"], guest_result_file)
                utils.write_df_to_csv(host_result[test_case]["result_detail"], host_result_file)
                    
        