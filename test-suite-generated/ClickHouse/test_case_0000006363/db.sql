DROP TABLE IF EXISTS test;
CREATE TABLE test (a Array(UInt64)) engine=MergeTree ORDER BY a;
INSERT INTO test VALUES ([3,4,5,6]), ([1,2,3,4]), ([2,3,4,5]);
DROP TABLE test;
CREATE TABLE IF NOT EXISTS test (id Int32, data Tuple(Int32, Int32)) ENGINE = MergeTree() ORDER BY id;
INSERT INTO test (id, data) VALUES (1, (100, 200)), (2, (15, 25)), (3, (2, 1)), (4, (30, 60));
