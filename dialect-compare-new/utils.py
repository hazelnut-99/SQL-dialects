from decimal import Decimal
from datetime import datetime, date, time
import glob

# unify data formats
def process_element(element):
    if isinstance(element, Decimal):
        return float(element)
    elif isinstance(element, (datetime, date, time)):
        return element if isinstance(element, time) else element.time()
    return element

def process_df(df):
    return df.map(process_element)


SUCCESS = "success"
ERROR = "error"
DIFFERENT = "different"

TEST_SUITE_PATHS = {
    "duck": "../test-suite-generated/duck",
    "sqlite": "../test-suite-generated/sqlite",
    "postgre": "../test-suite-generated/postgre",
    "click":  "../test-suite-generated/ClickHouse"
}

ALL_DBS = ["duck", "sqlite", "postgre", "click"]


def list_all_test_collections(test_suite_path):
    return sorted(list(glob.glob(test_suite_path + '/test_collection_*')))

def list_all_test_cases(test_collection_path):
    return sorted(list(glob.glob(test_collection_path + "/test_case_*")))

def write_result_to_file(result, path):
    if result["result"] == SUCCESS:
        write_df_to_csv(result["result_detail"], path)
    else:
        write_string_to_csv(result["result_detail"], path)

def write_string_to_csv(content, path):
    with open(path, 'w') as result_file:
        result_file.write(content)

def write_df_to_csv(df, path):
    try:
        df.sort_values(by=list(df.columns), inplace=True)
        csv = df.to_csv(index=False, header=False)
    except Exception as e:
        print("columns: ")
        print(list(df.columns))
        print("data:")
        print(df)
        raise e
    with open(path, 'w') as result_file:
        result_file.write(csv)