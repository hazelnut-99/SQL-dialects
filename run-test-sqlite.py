import hashlib
from pprint import pprint
import pandas as pd
import sqlite3
import os
import glob
import multiprocessing
import tqdm

def setup_db(collection):
    with open(f"{collection}/db.sql", 'r') as sql_file:
        setup_script = sql_file.read()

    db_path = f'/tmp/{collection.rsplit("/", 1)[-1]}.db'
    db = sqlite3.connect(db_path)
    cursor = db.cursor()
    cursor.executescript(setup_script)
    db.commit()
    db.close()

    return db_path, collection

def run_test(db_path, collection, test_case):
    with open(f"{collection}/{test_case}/test.sql", 'r') as test_file:
        test_script = test_file.read()

    db = sqlite3.connect(db_path)
    df = pd.read_sql_query(test_script, db)
    db.close()
    return df

def write_result(case, N=3):
    try:
        db_path, collection, test_case = case

        df_ref = run_test(db_path, collection, test_case)
        for i in range(1, N):
            df = run_test(db_path, collection, test_case)
            if not df_ref.equals(df):
                print(f"Test case {test_case} is not deterministic")
                return

        output_path = f"{collection}/{test_case}/".replace('sqlite', 'sqlite_command_sqlite_db_results')
        os.makedirs(os.path.dirname(output_path), exist_ok=True)

        csv = df_ref.to_csv(index=False, header=False)

        with open(output_path + 'result.csv', 'w') as result_file:
            result_file.write(csv)

        # compute md5 hash of df_ref using python md5sum lib
        md5sum = hashlib.md5(csv.encode()).hexdigest()
        with open(output_path + 'result.md5', 'w') as md5_file:
            md5_file.write(md5sum)

    except Exception as e:
        print(f"Error in test case {test_case}")
        print(e)
        return



def main():
    collections = list(glob.glob('test-suite-generated/sqlite/test_collection_*'))

    with multiprocessing.Pool(24) as pool:
        cases = []
        db_paths = []
        for db_path, collection in tqdm.tqdm(pool.imap_unordered(setup_db, collections), total=len(collections)):
            db_paths.append(db_path)
            for test_path in glob.glob(f'{collection}/test_case_*'):
                test_case = test_path.rsplit('/', 1)[-1]
                cases.append((db_path, collection, test_case))

        for _ in tqdm.tqdm(pool.imap_unordered(write_result, cases), total=len(cases)):
            pass

    for db_path in db_paths:
        os.remove(db_path)

    print('done')


if __name__ == '__main__':
    main()
