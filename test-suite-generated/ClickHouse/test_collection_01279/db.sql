DROP TABLE IF EXISTS test1;
DROP TABLE IF EXISTS test1_distributed;
DROP TABLE IF EXISTS test_merge;
CREATE TABLE test1 (id Int64, name String) ENGINE MergeTree PARTITION BY (id) ORDER BY (id);
CREATE TABLE test_merge AS test1 ENGINE = Merge('default', 'test1_distributed');
DROP TABLE test1;
DROP TABLE test_merge;
CREATE TABLE test1 (id Int64, name String) ENGINE MergeTree PARTITION BY (id) ORDER BY (id);
CREATE TABLE test_merge AS test1 ENGINE = Merge('default', 'test1');
