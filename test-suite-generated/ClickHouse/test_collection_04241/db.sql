DROP TABLE IF EXISTS test_table_1;
CREATE TABLE test_table_1
(
    id UInt64,
    value_1 String,
    value_2 UInt64
) ENGINE=MergeTree ORDER BY id;
DROP TABLE IF EXISTS test_table_2;
CREATE TABLE test_table_2
(
    id UInt64,
    value_1 String,
    value_2 UInt64
) ENGINE=MergeTree ORDER BY id;
INSERT INTO test_table_1 VALUES (0, 'Value', 0);
INSERT INTO test_table_2 VALUES (0, 'Value', 0);
