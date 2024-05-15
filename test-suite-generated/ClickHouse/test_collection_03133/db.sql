DROP TABLE IF EXISTS test_empty;
CREATE TABLE test_empty (a Array(Int64)) engine=MergeTree ORDER BY a;
INSERT INTO test_empty VALUES ([]);
INSERT INTO test_empty VALUES ([1]);
