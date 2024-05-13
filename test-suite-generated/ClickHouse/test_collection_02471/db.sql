DROP TABLE IF EXISTS aggregate_functions_null_for_empty;
CREATE TABLE aggregate_functions_null_for_empty (`x` UInt32, `y` UInt64, PROJECTION p (SELECT sum(y))) ENGINE = MergeTree ORDER BY tuple();
