drop table if exists lc_lambda;
drop table if exists lc_lambda;
drop table if exists test_array;
CREATE TABLE test_array(resources_host Array(LowCardinality(String))) ENGINE = MergeTree() ORDER BY (resources_host);
insert into test_array values (['a']);
drop table if exists test_array;
