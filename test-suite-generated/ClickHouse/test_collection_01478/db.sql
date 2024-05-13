DROP DATABASE IF EXISTS test_01109;
CREATE DATABASE test_01109 ENGINE=Atomic;
USE test_01109;
CREATE TABLE t0 ENGINE=MergeTree() ORDER BY tuple() AS SELECT rowNumberInAllBlocks(), * FROM (SELECT toLowCardinality(arrayJoin(['exchange', 'tables'])));
CREATE TABLE t2 ENGINE=MergeTree() ORDER BY tuple() AS SELECT rowNumberInAllBlocks() + (SELECT count() FROM t0), * FROM (SELECT arrayJoin(['hello', 'world']));
RENAME TABLE t0 TO t1; -- { serverError 57 }
DROP TABLE t1;
EXCHANGE TABLES t1 AND t2;
RENAME TABLE t1 TO t1tmp, t2 TO t2tmp;
RENAME TABLE t1tmp TO t2, t2tmp TO t1;
