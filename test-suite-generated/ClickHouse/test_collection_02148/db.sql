DROP TABLE IF EXISTS t_index_non_materialized;
CREATE TABLE t_index_non_materialized (a UInt32) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO t_index_non_materialized VALUES (1);
ALTER TABLE t_index_non_materialized ADD INDEX ind_minmax (a) TYPE minmax() GRANULARITY 1;
