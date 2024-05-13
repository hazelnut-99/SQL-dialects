DROP TABLE IF EXISTS t_materialize_delete;
CREATE TABLE t_materialize_delete (id UInt64, v UInt64)
ENGINE = MergeTree ORDER BY id PARTITION BY id % 10;
INSERT INTO t_materialize_delete SELECT number, number FROM numbers(100);
