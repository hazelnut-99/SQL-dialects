CREATE TABLE test_table (n Int32, s String) ENGINE MergeTree PARTITION BY n ORDER BY n;
CREATE TABLE mview_backend (n Int32, n2 Int64) ENGINE MergeTree PARTITION BY n ORDER BY n;
CREATE MATERIALIZED VIEW mview TO mview_backend AS SELECT n, n * n AS "n2" FROM test_table;
DROP TABLE test_table;
DETACH TABLE mview;
ATTACH TABLE mview;
CREATE TABLE test_table (n Int32, s String) ENGINE MergeTree PARTITION BY n ORDER BY n;
INSERT INTO test_table VALUES (3,'some_val');
