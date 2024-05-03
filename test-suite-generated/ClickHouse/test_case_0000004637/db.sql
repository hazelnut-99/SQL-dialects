DROP TABLE IF EXISTS t_functions_to_subcolumns_alias;
CREATE TABLE t_functions_to_subcolumns_alias (id UInt64, t Tuple(UInt64, String), m Map(String, UInt64)) ENGINE = Memory;
INSERT INTO t_functions_to_subcolumns_alias VALUES (1, (100, 'abc'), map('foo', 1, 'bar', 2)) (2, NULL, map());
