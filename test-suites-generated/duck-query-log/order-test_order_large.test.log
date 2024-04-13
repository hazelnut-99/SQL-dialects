PRAGMA verify_parallelism;
CREATE TABLE test AS SELECT a FROM range(10000, 0, -1) t1(a);
SELECT * FROM test ORDER BY a;
