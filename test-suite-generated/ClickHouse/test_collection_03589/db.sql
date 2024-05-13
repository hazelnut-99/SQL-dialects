DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value_0'), (1, 'Value_1'), (2, 'Value_2');
DROP TABLE IF EXISTS test_table_for_in;
CREATE TABLE test_table_for_in
(
    id UInt64
) ENGINE=TinyLog;
INSERT INTO test_table_for_in VALUES (0), (1);
WITH cte_test_table_for_in AS (SELECT id FROM test_table_for_in) SELECT id, value FROM test_table WHERE id IN cte_test_table_for_in;
