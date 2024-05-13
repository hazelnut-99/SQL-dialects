DROP TABLE IF EXISTS test_tuple;
CREATE TABLE test_tuple (value Tuple(UInt8, UInt8)) ENGINE=TinyLog;
INSERT INTO test_tuple VALUES ((NULL, 1));
