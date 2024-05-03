DROP TABLE IF EXISTS t_key_condition_float;
CREATE TABLE t_key_condition_float (a Float32)
ENGINE = MergeTree ORDER BY a;
INSERT INTO t_key_condition_float VALUES (0.1), (0.2);
DROP TABLE t_key_condition_float;
CREATE TABLE t_key_condition_float (a Float64)
ENGINE = MergeTree ORDER BY a;
INSERT INTO t_key_condition_float VALUES (0.1), (0.2);
