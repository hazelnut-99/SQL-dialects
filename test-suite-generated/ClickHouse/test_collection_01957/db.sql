DROP TABLE IF EXISTS test_table_unsigned_values;
CREATE TABLE test_table_unsigned_values
(
    id UInt64,

    value1 UInt8,
    value2 UInt16,
    value3 UInt32,
    value4 UInt64,

    weight UInt64
) ENGINE=TinyLog;
DROP TABLE test_table_unsigned_values;
