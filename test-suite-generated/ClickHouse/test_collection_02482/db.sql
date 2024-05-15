DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,
    value_1 Array(UInt8),
    value_2 Array(UInt8),
) ENGINE=TinyLog;
INSERT INTO test_table VALUES (0, [1, 2, 3], [1, 2, 3, 4]);
