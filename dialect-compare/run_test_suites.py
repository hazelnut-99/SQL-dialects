from db_connection import *
import json 
import os
from decimal import Decimal
import base64
from datetime import datetime, date, time


test_suite_paths = {
    "duck": "../test-suite-generated/duck",
    "sqlite": "../test-suite-generated/sqlite",
    "postgre": "../test-suite-generated/postgre",
    "click":  "../test-suite-generated/ClickHouse"
}

all_dbs = ["duck", "sqlite", "postgre"]


class DecimalEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, Decimal):
            return float(obj)  # or str(obj)
        if isinstance(obj, bytes):
            return base64.b64encode(obj).decode('utf-8')
        if isinstance(obj, datetime):
            return obj.isoformat()
        if isinstance(obj, date):  # Handle date objects
            return obj.isoformat()
        if isinstance(obj, time):
            return obj.isoformat()
        return super(DecimalEncoder, self).default(obj)
    
def custom_key(item):
    # Replace None with a very small value
    return tuple(-float('inf') if x is None else x for x in item)


for host_db in ["postgre"]:
    test_suite_path = test_suite_paths[host_db]
    collections = sorted(list(glob.glob(test_suite_path + '/test_collection_*')))
    for collection in collections:
        print(collection)
        db_name = collection.split("/")[-1]
        host_db_instance = get_database_instance(host_db, db_name + "_" + host_db)
        host_result = host_db_instance.run_a_collection(collection)
        host_db_instance.close_connection()
        host_db_instance.delete_database()
        
        for guest_db in ["duck", "sqlite"]:
            if guest_db == host_db:
                continue 
            top_dir = f"{host_db}_{guest_db}"
            os.makedirs(top_dir, exist_ok=True)
            guest_db_instance = get_database_instance(guest_db, db_name + "_" + guest_db)
            guest_result = guest_db_instance.run_a_collection(collection)
            guest_db_instance.close_connection()
            guest_db_instance.delete_database()
        
            test_cases = host_result.keys()
            diff_details = []
            for test_case in test_cases:
                if guest_result[test_case].result_type == RunResultType.ERROR or host_result[test_case].result_type == RunResultType.ERROR:
                    compare_result_detail = {
                        "test_case": test_case,
                        "type": "error",
                        "result_detail":  guest_result[test_case].result_detail,
                        "error_stage": guest_result[test_case].fail_stage.value if guest_result[test_case].fail_stage else None
                    }
                elif sorted(guest_result[test_case].result_detail, key=custom_key) == sorted(host_result[test_case].result_detail, key=custom_key):
                    compare_result_detail = {
                        "test_case": test_case,
                        "type": "same"
                    }
                else:
                    compare_result_detail = {
                        "test_case": test_case,
                        "type": "different",
                        "host_result_detail": host_result[test_case].result_detail,
                        "guest_result_detail": guest_result[test_case].result_detail 
                    }
                diff_details.append(compare_result_detail)
                json_str = json.dumps(diff_details, cls=DecimalEncoder)
                with open(f"{top_dir}/{db_name}.json", "w") as json_file:
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

        



