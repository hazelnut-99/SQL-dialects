import db_connection 
import utils
import os


for guest_db in utils.ALL_DBS:
    test_collections = utils.list_all_test_collections(utils.TEST_SUITE_PATHS[guest_db])
    for collection in test_collections:
        test_cases = utils.list_all_test_cases(collection)
        
    
        for host_db in utils.ALL_DBS:
            if guest_db == host_db:
                continue
            # ple
            pass