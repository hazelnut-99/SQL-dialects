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
    return df.applymap(process_element)


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