DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE = TinyLog;
INSERT INTO test_table VALUES (0, 'Value');
WITH cte_subquery AS (SELECT 1) SELECT * FROM cte_subquery AS cte_subquery;
