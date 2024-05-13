DROP TABLE IF EXISTS t_func_to_subcolumns;
CREATE TABLE t_func_to_subcolumns (id UInt64, arr Array(UInt64), n Nullable(String), m Map(String, UInt64))
ENGINE = MergeTree ORDER BY tuple();
INSERT INTO t_func_to_subcolumns VALUES (1, [1, 2, 3], 'abc', map('foo', 1, 'bar', 2)) (2, [], NULL, map());
