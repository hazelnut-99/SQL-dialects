DROP TABLE IF EXISTS test_alias;
CREATE TABLE test_alias (a UInt8 ALIAS b, b UInt8) ENGINE Log;
