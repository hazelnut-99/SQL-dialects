# Original Test Suites

Find original test suites of each DBMS at: [Original Test Suites](https://github.com/hazelnut-99/SQL-dialects/tree/main/original-test-suites)

They are downloaded from:
- DuckDB: [DuckDB Test SQL](https://github.com/duckdb/duckdb/tree/main/test/sql)
- SQLite: [SQLite Test Suite](https://www.sqlite.org/sqllogictest/dir?ci=tip)
- PostgreSQL: [PostgreSQL Test](https://github.com/postgres/postgres/tree/master/src/test)
- ClickHouse: [ClickHouse Test Queries](https://github.com/ClickHouse/ClickHouse/tree/master/tests/queries/0_stateless)

# Compiled Test Cases
### Each test case stored in 3 files
1. *db.sql*: contains SQL statements for setting up database  (none if doesn't need set up statements)  
2. *test.sql*: contains the test query  
3. *result.csv*: contains the query result.  

### Directory structure
1. Test cases are organized into *test collections*, each *test collection* consists of multiple *test cases*.
   <img width="358" alt="image" src="https://github.com/hazelnut-99/SQL-dialects/assets/130122455/903b78f1-836c-4b18-83c4-2092b6bff6ae">

3. All *test cases* inside a *test collection* share the same *db.sql* file as set-up statements.  (none if doesn't need set up statements)  
4. Each *test case* consists of one *test.sql* file and one *result.csv* file.

![Directory Structure](https://github.com/hazelnut-99/SQL-dialects/assets/130122455/73b44a3f-681a-4793-aef6-5cd88f574712)

# Dialect Comparison

1. All query results are located at: [Dialect Comparison](https://github.com/hazelnut-99/SQL-dialects/tree/main/result-compare)  
2. Top level is the guest DBMS
   <img width="221" alt="image" src="https://github.com/hazelnut-99/SQL-dialects/assets/130122455/5679a2f1-9dcf-4a7e-b766-8c1f0617de6b">
3. Execution of the same test case on different DBMS are stored together.
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
