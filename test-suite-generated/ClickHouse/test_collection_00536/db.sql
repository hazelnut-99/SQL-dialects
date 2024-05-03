DROP TABLE IF EXISTS test_array_ops;
CREATE TABLE test_array_ops(arr Array(Nullable(Int64))) ENGINE = Memory;
INSERT INTO test_array_ops(arr) values ([null, 10, -20]);
INSERT INTO test_array_ops(arr) values ([10, -20]);
INSERT INTO test_array_ops(arr) values ([]);
