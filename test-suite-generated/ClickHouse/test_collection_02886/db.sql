DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt32,
    value UInt32
) ENGINE = MergeTree ORDER BY id;
DROP TABLE test_table;
CREATE TABLE test_table
(
    id UInt32,
    value_1 UInt32,
    value_2 Float32
) ENGINE = MergeTree ORDER BY id;
