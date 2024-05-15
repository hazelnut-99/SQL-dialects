DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table
(
    id UInt64,

    value UInt8,
    value_nullable Nullable(UInt8)
) ENGINE=TinyLog;
