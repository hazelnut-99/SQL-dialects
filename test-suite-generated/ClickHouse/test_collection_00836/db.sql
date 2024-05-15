DROP TABLE IF EXISTS test;
CREATE TABLE test (a UInt8, b UInt8, c UInt16 ALIAS a + b) ENGINE = MergeTree ORDER BY a;
