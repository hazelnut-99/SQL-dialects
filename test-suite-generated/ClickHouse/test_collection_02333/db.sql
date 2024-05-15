DROP TABLE IF EXISTS t_tuple_numeric;
CREATE TABLE t_tuple_numeric (t Tuple(`1` Tuple(`2` Int, `3` Int), `4` Int)) ENGINE = Memory;
SHOW CREATE TABLE t_tuple_numeric;
INSERT INTO t_tuple_numeric VALUES (((2, 3), 4));
DROP TABLE t_tuple_numeric;
CREATE TABLE t_tuple_numeric (t Tuple(Tuple(Int, Int), Int)) ENGINE = Memory;
INSERT INTO t_tuple_numeric VALUES (((2, 3), 4));
