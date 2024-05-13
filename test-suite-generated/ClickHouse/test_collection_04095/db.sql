DROP TABLE IF EXISTS test_table;
CREATE TABLE test_table (a UInt8, b UInt8) ENGINE = TinyLog;
DROP TABLE test_table;
DROP TABLE IF EXISTS test_table_nullable;
CREATE TABLE test_table_nullable (a UInt8, b Nullable(UInt8)) ENGINE = TinyLog;
INSERT INTO test_table_nullable VALUES (0, 0), (0, 1), (1, 0), (1, 1), (0, NULL), (1, NULL);
