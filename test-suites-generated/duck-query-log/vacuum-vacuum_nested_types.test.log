CREATE TABLE test (x INT[], y AS (x || 100));;
ANALYZE test(y, x);;
INSERT INTO test SELECT [range % 5000] FROM range(10000);;
