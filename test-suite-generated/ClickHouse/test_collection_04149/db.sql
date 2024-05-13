DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt32,
    value UInt32
) ENGINE = MergeTree ORDER BY id;
