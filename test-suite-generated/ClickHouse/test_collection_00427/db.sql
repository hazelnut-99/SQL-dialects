DROP TEMPORARY TABLE IF EXISTS temporary_table;
DROP TABLE IF EXISTS test_merge_1;
DROP TABLE IF EXISTS test_merge_2;
CREATE TABLE test_merge_1(id UInt64) ENGINE = Log;
CREATE TABLE test_merge_2(id UInt64) ENGINE = Log;
CREATE TEMPORARY TABLE temporary_table AS SELECT * FROM numbers(1) WHERE number NOT IN (SELECT id FROM merge(currentDatabase(), 'test_merge_1|test_merge_2'));
