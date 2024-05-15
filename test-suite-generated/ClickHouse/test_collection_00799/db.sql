DROP TABLE IF EXISTS mv_extra_columns_dst;
DROP TABLE IF EXISTS mv_extra_columns_src;
DROP TABLE IF EXISTS mv_extra_columns_view;
CREATE TABLE mv_extra_columns_dst (
    v UInt64
) ENGINE = MergeTree()
    PARTITION BY tuple()
    ORDER BY v;
CREATE TABLE mv_extra_columns_src (
    v1 UInt64,
    v2 UInt64
) ENGINE = Null;
CREATE MATERIALIZED VIEW mv_extra_columns_view TO mv_extra_columns_dst
AS SELECT
  v1 as v,
  v2 as v2
FROM mv_extra_columns_src;
INSERT INTO mv_extra_columns_src VALUES (0, 0), (1, 1), (2, 2);
