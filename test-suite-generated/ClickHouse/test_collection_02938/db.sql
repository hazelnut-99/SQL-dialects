DROP TABLE IF EXISTS test;
CREATE TABLE test (a Array(UInt64)) engine=MergeTree ORDER BY a;
INSERT INTO test VALUES ([3,4,5,6]), ([1,2,3,4]), ([2,3,4,5]);
