
### Original Test Suites

they are downloaded from:  
  duckdb: https://github.com/duckdb/duckdb/tree/main/test/sql  
  sqlite: https://www.sqlite.org/sqllogictest/dir?ci=tip  
  postgresql: https://github.com/postgres/postgres/tree/master/src/test  
  clickhouse: https://github.com/ClickHouse/ClickHouse/tree/master/tests/queries/0_stateless  

### Compiled Test Cases
The directory structure for the compiled test cases is as follows:
1. Test cases are organized into *test collections*, each *test collection* consists of multiple *test cases*.
2. All *test cases* inside a *test collection* shares the same *db.sql* file as set-up statements, each *test case* consists of one *test.sql* file and one *result.csv* file

<img width="321" alt="image" src="https://github.com/hazelnut-99/SQL-dialects/assets/130122455/73b44a3f-681a-4793-aef6-5cd88f574712">



### Dialect Comparison
All query results are located at:


### To Reproduce the Results
To reproduce the results, follow the steps outlined in the documentation provided in each test suite repository.

#### env setup
```bash
# Create a Python virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# install dependency
pip install duckdb psycopg2 clickhouse-connect docker
docker pull postgres:latest

#### To reproduce the results
python scripts/generate_result guest_db host_db
e.g. to run sqlite's test cases on duck: python scripts/generate_result sqlite duck

```


#### Sidenote
We encountered some issues while working with ClickHouse. There were session lock issues that we couldn't resolve, and as a result, we didn't include results from ClickHouse in the report.





