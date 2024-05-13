DROP TABLE IF EXISTS t_comp_subcolumns;
CREATE TABLE t_comp_subcolumns (id UInt32, n Nullable(String), arr Array(Array(UInt32)))
ENGINE = MergeTree ORDER BY id;
INSERT INTO t_comp_subcolumns SELECT number, 'a', [range(number % 11), range(number % 13)] FROM numbers(20000);
