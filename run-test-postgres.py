import hashlib
from pprint import pprint
import pandas as pd
import sqlite3
import os
import glob
import multiprocessing
import tqdm
import docker
import psycopg2
from time import sleep
import itertools

def batched(iterable, n):
    "Batch data into lists of length n. The last batch may be shorter."
    # batched('ABCDEFG', 3) --> ABC DEF G
    it = iter(iterable)
    while True:
        batch = list(itertools.islice(it, n))
        if not batch:
            return
        yield batch

def setup_db(args):
    port, collection = args
    client = docker.from_env()
    container = client.containers.run(
        name=f'postgres-{port}',
        image='postgres',
        ports={5432: port},
        detach=True,
        environment={
            'POSTGRES_USER': 'ast',
            'POSTGRES_PASSWORD': 'password',
            'POSTGRES_DB': 'ast'
        },
        volumes={
            os.path.abspath(collection + '/db.sql'): {'bind': '/docker-entrypoint-initdb.d/init.sql', 'mode': 'rw'}
        }
    )


    sleep(5)

    return port, collection

def run_test(cursor, collection, test_case):
    with open(f"{collection}/{test_case}/test.sql", 'r') as test_file:
        test_script = test_file.read()

    cursor.execute(test_script)
    result = cursor.fetchall()

    df = pd.DataFrame(result)
    return df

def write_result(cases, N=3):
    for port, collection, test_case in cases:

        client = psycopg2.connect(dbname='ast', user='ast', password='password', host='localhost', port=port)

        cursor = client.cursor()

        try:
            df_ref = run_test(cursor, collection, test_case)
            for i in range(1, N):
                df = run_test(cursor, collection, test_case)
                if not df_ref.equals(df):
                    print(f"Test case {test_case} is not deterministic")
                    return

            output_path = f"{collection}/{test_case}/".replace('sqlite', 'sqlite_command_postgres_db_results')
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

    client.close()



def main():
    collections = list(enumerate(glob.glob('test-suite-generated/sqlite/test_collection_*'), start=9000))

    with multiprocessing.Pool(12) as pool:
        cases = []
        ports = []
        for port, collection in tqdm.tqdm(pool.imap_unordered(setup_db, collections), total=len(collections)):
            ports.append(port)
            for test_path in glob.glob(f'{collection}/test_case_*'):
                test_case = test_path.rsplit('/', 1)[-1]
                cases.append((port, collection, test_case))
            pass

        for _ in tqdm.tqdm(pool.imap_unordered(write_result, batched(cases, 20)), total=len(cases) // 20):
            pass

    client = docker.from_env()
    for port in ports:
        container = client.containers.get(f'postgres-{port}')
        container.stop()
        container.remove()

    print('done')


if __name__ == '__main__':
    main()
