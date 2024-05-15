DROP TABLE IF EXISTS test_table_unsigned_values;
CREATE TABLE test_table_unsigned_values
(
    id UInt64,

    value1 UInt8,
    value2 UInt16,
    value3 UInt32,
    value4 UInt64,

    predicate_value UInt8
) ENGINE=TinyLog;
DROP TABLE test_table_unsigned_values;
