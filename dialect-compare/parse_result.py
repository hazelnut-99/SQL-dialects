import json 
import glob

result_dir = "click_postgre"
def read_json(file_path):
    with open(file_path, 'r') as file:
        data = json.load(file)
    return data

guest, host = result_dir.split("_")
result_files = list(glob.glob(result_dir + '/test_collection_*'))


same_list = []
different_list = []
error_list = []
for json_file in result_files:
    results = read_json(json_file)
    for test_case in results:
        if test_case["type"] == "same":
            same_list.append(test_case["test_case"])
        elif test_case["type"] == "different":
            different_list.append(test_case["test_case"])
        else:
            error_list.append(test_case["test_case"])

print("run test cases from %s on %s" % (guest, host))
print("=========result============")
print("same: %d, different: %d, error: %d" % (len(same_list), len(different_list), len(error_list)))
print("============different details===================")
for diff_case in different_list:
    print(diff_case)




