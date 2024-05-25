# Original Test Suites

Find original test suites of each DBMS at: [Original Test Suites](https://github.com/hazelnut-99/SQL-dialects/tree/main/original-test-suites)

They are downloaded from:
- DuckDB: [DuckDB Test SQL](https://github.com/duckdb/duckdb/tree/main/test/sql)
- SQLite: [SQLite Test Suite](https://www.sqlite.org/sqllogictest/dir?ci=tip)
- PostgreSQL: [PostgreSQL Test](https://github.com/postgres/postgres/tree/master/src/test)
- ClickHouse: [ClickHouse Test Queries](https://github.com/ClickHouse/ClickHouse/tree/master/tests/queries/0_stateless)

# Compiled Test Cases

The directory structure for the compiled test cases is as follows:

1. Test cases are organized into *test collections*, each *test collection* consists of multiple *test cases*.
2. All *test cases* inside a *test collection* share the same *db.sql* file as set-up statements. Each *test case* consists of one *test.sql* file and one *result.csv* file.

![Directory Structure](https://github.com/hazelnut-99/SQL-dialects/assets/130122455/73b44a3f-681a-4793-aef6-5cd88f574712)

# Dialect Comparison

All query results are located at (organized per test case): [Dialect Comparison](https://github.com/hazelnut-99/SQL-dialects/tree/main/result-compare)  
<img width="287" alt="image" src="https://github.com/hazelnut-99/SQL-dialects/assets/130122455/8b30bcb6-ef57-4d82-bac3-d0167f8dec81">


# To Reproduce the Results

To reproduce the results, follow the steps outlined in the documentation provided in each test suite repository.

## Environment Setup

```bash
# Create a Python virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install dependencies
pip install duckdb psycopg2 clickhouse-connect docker
docker pull postgres:latest

```
## To reproduce the results
```
python scripts/generate_result guest_db host_db
# e.g. to run SQLite's test cases on DuckDB:
python scripts/generate_result sqlite duck
```

#### Sidenote
We encountered some issues while working with ClickHouse. There were session lock issues that we couldn't resolve, and as a result, we didn't include results from ClickHouse in the report.
