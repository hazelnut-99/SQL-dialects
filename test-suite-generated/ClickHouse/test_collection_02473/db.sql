DROP TABLE IF EXISTS aggregate_functions_null_for_empty;
CREATE TABLE aggregate_functions_null_for_empty (`x` UInt32, `y` UInt64, PROJECTION p (SELECT sum(y))) ENGINE = MergeTree ORDER BY tuple();
DROP TABLE aggregate_functions_null_for_empty;
DROP TABLE IF EXISTS transform_null_in;
CREATE TABLE transform_null_in (`x` UInt32, `y` UInt64, PROJECTION p (SELECT sum(y in (1,2,3)))) ENGINE = MergeTree ORDER BY tuple();
DROP TABLE transform_null_in;
DROP TABLE IF EXISTS legacy_column_name_of_tuple_literal;
CREATE TABLE legacy_column_name_of_tuple_literal (`x` UInt32, `y` UInt64, PROJECTION p (SELECT sum(y in (1,2,3)))) ENGINE = MergeTree ORDER BY tuple();
