SYSTEM DROP QUERY CACHE;
DROP TABLE IF EXISTS t;
CREATE TABLE t(c String) ENGINE=MergeTree ORDER BY c;
OPTIMIZE TABLE t FINAL;
