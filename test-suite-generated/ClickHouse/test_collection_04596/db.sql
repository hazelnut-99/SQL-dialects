DROP TABLE IF EXISTS src_table;
DROP TABLE IF EXISTS mv;
CREATE TABLE src_table (`a` UInt32, `b` UInt32) ENGINE = MergeTree ORDER BY a;
CREATE MATERIALIZED VIEW mv (`a` UInt32) ENGINE = MergeTree ORDER BY a AS SELECT a FROM src_table;
INSERT INTO src_table (a, b) VALUES (1, 1), (2, 2);
