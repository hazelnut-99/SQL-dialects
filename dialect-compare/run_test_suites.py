from db_connection import *
import json 
import os

test_suite_paths = {
    "duck": "../test-suite-generated/duck",
    "sqlite": "../test-suite-generated/sqlite",
    "postgre": "../test-suite-generated/postgre",
    "click":  "../test-suite-generated/ClickHouse"
}

all_dbs = ["duck", "sqlite", "postgre", "click"]



for host_db in all_dbs:
    print("running %s" % (host_db))
    error_cases = []
    test_suite_path = test_suite_paths[host_db]
    collections = list(glob.glob(test_suite_path + '/test_collection_*'))
    for collection in collections:
        db_name = collection.split("/")[-1]
        host_db_instance = get_database_instance(host_db, f"{host_db}_{db_name}")
        host_result = host_db_instance.run_a_collection(collection)
        for test_case, result in host_result.items():
            if result.result_type == RunResultType.ERROR:
                error_cases.append({
                    "test_case": test_case,
                    "result": result
                })
        host_db_instance.close_connection()
        host_db_instance.delete_database()
        
    print("%s number of error test cases: %d" % (host_db, len(error_cases)))
    
    json_str = json.dumps(error_cases, cls=CustomJSONEncoder)
    with open(f"{host_db}_errors.json", "w") as json_file:
        json_file.write(json_str)  
        
        
    
    
    
    
    # for guest_db in all_dbs:
    #     if host_db == guest_db:
    #         continue
    #     output_dir = f"{host_db}_{guest_db}"
    #     os.makedirs(output_dir, exist_ok=True)
        
    #     collections = list(glob.glob(test_suite_path + '/test_collection_*'))[:1]
    #     for collection in collections:
    #         result_list = []
    #         db_name = collection.split("/")[-1]
    #         host_db_instance = get_database_instance(host_db, f"{host_db}_{db_name}")
    #         guest_db_instance = get_database_instance(guest_db, f"{guest_db}_{db_name}")
            
    #         host_result = host_db_instance.run_a_collection(collection)
    #         guest_result = guest_db_instance.run_a_collection(collection)
            
            
    #         test_cases = host_result.keys()
    #         for case in test_cases:
    #             item = {
    #                 "test_case": case,
    #                 "host_result": host_result,
    #                 "guest_result": guest_result
    #             }
    #             result_list.append(item)
                
    #         host_db_instance.close_connection()
    #         guest_db_instance.close_connection()
    #         host_db_instance.delete_database()
    #         guest_db_instance.delete_database()
            
    #         json_str = json.dumps(result_list, cls=CustomJSONEncoder)
    #         with open(f"{output_dir}/{db_name}", "w") as json_file:
    #             json_file.write(json_str)  

        