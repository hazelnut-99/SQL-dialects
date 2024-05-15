DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String,
    value_array Array(UInt64)
) ENGINE=MergeTree ORDER BY id;
INSERT INTO test_table VALUES (0, 'Value_0', [1,2,3]);
