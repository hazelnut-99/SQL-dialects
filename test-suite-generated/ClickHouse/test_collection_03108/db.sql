DROP TABLE IF EXISTS errors_local;
CREATE TABLE errors_local(level LowCardinality(String)) ENGINE=ReplacingMergeTree ORDER BY level;
insert into errors_local select toString(number) from numbers(10000);
