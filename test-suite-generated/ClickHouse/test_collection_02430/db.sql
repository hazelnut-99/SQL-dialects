DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value');
WITH 1 AS a SELECT (SELECT a);
WITH 1 AS global_a SELECT a FROM (SELECT global_a AS a) AS b;
WITH 1 AS global_a SELECT b.a FROM (SELECT global_a AS a) AS b;
WITH 1 AS a SELECT (SELECT * FROM (SELECT * FROM (SELECT a + 1)));
