DROP TABLE IF EXISTS test_table_unsigned_values;
CREATE TABLE test_table_unsigned_values
(
    id UInt64,

    value1 UInt8,
    value2 UInt16,
    value3 UInt32,
    value4 UInt64
) ENGINE=TinyLog;
DROP TABLE test_table_unsigned_values;
DROP TABLE IF EXISTS test_table_signed_values;
CREATE TABLE test_table_signed_values
(
    id UInt64,

    value1 Int8,
    value2 Int16,
    value3 Int32,
    value4 Int64
) ENGINE=TinyLog;
DROP TABLE test_table_signed_values;
DROP TABLE IF EXISTS test_table_float_values;
CREATE TABLE test_table_float_values
(
    id UInt64,

    value1 Float32,
    value2 Float64
) ENGINE=TinyLog;
DROP TABLE test_table_float_values;
DROP TABLE IF EXISTS test_table_nullable_unsigned_values;
CREATE TABLE test_table_nullable_unsigned_values
(
    id UInt64,

    value1 Nullable(UInt8),
    value2 Nullable(UInt16),
    value3 Nullable(UInt32),
    value4 Nullable(UInt64)
) ENGINE=TinyLog;
DROP TABLE test_table_nullable_unsigned_values;
DROP TABLE IF EXISTS test_table_nullable_signed_values;
CREATE TABLE test_table_nullable_signed_values
(
    id UInt64,

    value1 Nullable(Int8),
    value2 Nullable(Int16),
    value3 Nullable(Int32),
    value4 Nullable(Int64)
) ENGINE=TinyLog;
