DROP TABLE IF EXISTS t_nested_with_dots;
CREATE TABLE t_nested_with_dots (n Nested(id UInt64, `values.id` Array(UInt64)))
ENGINE = MergeTree ORDER BY tuple();
INSERT INTO t_nested_with_dots VALUES ([1], [[1]]);
