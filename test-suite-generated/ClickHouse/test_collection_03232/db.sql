DROP TABLE IF EXISTS t_nested_with_dots;
CREATE TABLE t_nested_with_dots (n Nested(id UInt64, `values.id` Array(UInt64)))
ENGINE = MergeTree ORDER BY tuple();
INSERT INTO t_nested_with_dots VALUES ([1], [[1]]);
DROP TABLE IF EXISTS t_nested_with_dots;
CREATE TABLE t_nested_with_dots (n Nested(id UInt64, `values.id` Array(UInt64)))
ENGINE = MergeTree ORDER BY tuple();
DROP TABLE IF EXISTS t_nested_with_dots;
CREATE TABLE t_nested_with_dots (`t.t2` Tuple(`t3.t4.t5` Tuple(`s1.s2` String, `u1.u2` UInt64), `s3.s4.s5` String))
ENGINE = MergeTree ORDER BY tuple();
INSERT INTO t_nested_with_dots VALUES ((('a', 1), 'b'));
