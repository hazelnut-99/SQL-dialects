import json 
import glob
from collections import defaultdict


def read_json(file_path):
    with open(file_path, 'r') as file:
        data = json.load(file)
    return data

all_dbs = ["click", "duck", "postgre", "sqlite"]


for guest in all_dbs:
    for host in all_dbs:
        if guest == host:
            continue
        result_dir = guest + "_" + host
        result_files = list(glob.glob(result_dir + '/test_collection_*'))
        errors = defaultdict(lambda:0)
        error_case = {}
        for json_file in result_files:
            results = read_json(json_file)
            for test_case in results:
                if test_case["type"] == "error":
                    errors[str(test_case["result_detail"])] += 1
                    error_case[str(test_case["result_detail"])] = test_case["test_case"]
                    top_10_keys = sorted(errors, key=errors.get, reverse=True)[:20]
        print("==============================")
        print("run %s test case on %s" % (guest, host))
        for key in top_10_keys:
            print("ERROR message; %s, example test case: %s" % (key.strip(), error_case[key]))
            


        # same_list = []
        # different_list = []
        # error_list = []
        # for json_file in result_files:
        #     results = read_json(json_file)
        #     for test_case in results:
        #         if test_case["type"] == "same":
        #             same_list.append(test_case["test_case"])
        #         elif test_case["type"] == "different":
        #             different_list.append(test_case["test_case"])
        #         else:
        #             error_list.append(test_case["test_case"])

        # print("run test cases from %s on %s" % (guest, host))
        # print("=========result============")
        # print("same: %d, different: %d, error: %d" % (len(same_list), len(different_list), len(error_list)))
        # print("(%d, %d, %d)" % (len(same_list), len(different_list), len(error_list)))
        
        # print("============different details===================")
        # for diff_case in different_list:
        #     print(diff_case)




