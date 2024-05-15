DROP TABLE IF EXISTS test;
CREATE TABLE test (x UInt8, y UInt8 DEFAULT x + 1) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO test (x) VALUES (1), (2), (3);
