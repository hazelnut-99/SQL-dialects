DROP TABLE IF EXISTS test;
CREATE TABLE test (key UInt64, a UInt8, b String, c Float64) ENGINE = MergeTree() ORDER BY key;
INSERT INTO test SELECT number, number, toString(number), number from numbers(4);
