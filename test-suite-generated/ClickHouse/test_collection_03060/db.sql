DROP TABLE IF EXISTS t_materialize_delete;
CREATE TABLE t_materialize_delete (id UInt64, v UInt64)
ENGINE = MergeTree ORDER BY id PARTITION BY id % 10;
INSERT INTO t_materialize_delete SELECT number, number FROM numbers(100);
DELETE FROM t_materialize_delete WHERE id % 7 = 3;
ALTER TABLE t_materialize_delete APPLY DELETED MASK;
DELETE FROM t_materialize_delete WHERE id % 7 = 4;
