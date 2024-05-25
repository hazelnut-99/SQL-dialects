
### Original Test Suites

they are downloaded from:  
  duckdb: https://github.com/duckdb/duckdb/tree/main/test/sql  
  sqlite: https://www.sqlite.org/sqllogictest/dir?ci=tip  
  postgresql: https://github.com/postgres/postgres/tree/master/src/test  
  clickhouse: https://github.com/ClickHouse/ClickHouse/tree/master/tests/queries/0_stateless  

### Compiled Test Cases
The directory structure for the compiled test cases is as follows:
1. Test cases are organized into *test collections*, each *test collection* consists of multiple *test cases*.
2. All *test cases* inside a *test collection* has the same *db.sql* file as set-up statements, each *test case* consists of one *test.sql* file and one *result.csv* file


### Dialect Comparison
All query results are located at:


### Reproducing the Results
To reproduce the results, follow the steps outlined in the documentation provided in each test suite repository.

#### Sidenote
We encountered some issues while working with ClickHouse. There were session lock issues that we couldn't resolve, and as a result, we didn't include results from ClickHouse in the report.





