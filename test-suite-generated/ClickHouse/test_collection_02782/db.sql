DROP TABLE IF EXISTS t_get_subcolumn;
CREATE TABLE t_get_subcolumn (id UInt64, n Nested(u UInt64, s String)) ENGINE = MergeTree ORDER BY id;
INSERT INTO t_get_subcolumn VALUES (1, [42], ['foo']);
