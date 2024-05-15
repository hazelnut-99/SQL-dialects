DROP DATABASE IF EXISTS test_01109;
CREATE DATABASE test_01109 ENGINE=Atomic;
USE test_01109;
CREATE TABLE t0 ENGINE=MergeTree() ORDER BY tuple() AS SELECT rowNumberInAllBlocks(), * FROM (SELECT toLowCardinality(arrayJoin(['exchange', 'tables'])));
CREATE TABLE t2 ENGINE=MergeTree() ORDER BY tuple() AS SELECT rowNumberInAllBlocks() + (SELECT count() FROM t0), * FROM (SELECT arrayJoin(['hello', 'world']));
RENAME TABLE t0 TO t1; -- { serverError 57 }
DROP TABLE t1;
