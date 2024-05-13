CREATE TABLE source (a Int32) ENGINE=MergeTree() ORDER BY tuple();
CREATE TABLE source_null AS source ENGINE=Null;
CREATE TABLE dest_a (count UInt32, min Int32, max Int32, count_subquery Int32, min_subquery Int32, max_subquery Int32) ENGINE=MergeTree() ORDER BY tuple();
CREATE MATERIALIZED VIEW mv_null TO source_null AS SELECT * FROM source;
CREATE MATERIALIZED VIEW mv_a to dest_a AS
SELECT
    count() AS count,
    min(a) AS min,
    max(a) AS max,
    (SELECT count() FROM source_null) AS count_subquery,
    (SELECT min(a) FROM source_null) AS min_subquery,
    (SELECT max(a) FROM source_null) AS max_subquery
FROM source_null
GROUP BY count_subquery, min_subquery, max_subquery;
