DROP TABLE IF EXISTS test1;
CREATE TABLE test1(i int, j int) ENGINE Log;
INSERT INTO test1 VALUES (1, 2), (3, 4);
WITH test1 AS (SELECT * FROM numbers(5)) SELECT * FROM test1;
WITH test1 AS (SELECT i + 1, j + 1 FROM test1) SELECT * FROM test1;
WITH test1 AS (SELECT i + 1, j + 1 FROM test1) SELECT * FROM (SELECT * FROM test1);
