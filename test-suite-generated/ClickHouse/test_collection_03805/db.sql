SYSTEM DROP QUERY CACHE;
DROP TABLE IF EXISTS t;
CREATE TABLE t(c String) ENGINE=MergeTree ORDER BY c;
SYSTEM STOP MERGES t; -- retain multiple parts to make the SELECT process multiple chunks
