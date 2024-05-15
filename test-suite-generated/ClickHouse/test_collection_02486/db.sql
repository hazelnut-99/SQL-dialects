DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value String,
    value_array Array(UInt64),
    value_array_array Array(Array(UInt64))
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, 'Value', [1, 2, 3], [[1, 2, 3]]), (0, 'Value', [4, 5, 6], [[1, 2, 3], [4, 5, 6]]);
