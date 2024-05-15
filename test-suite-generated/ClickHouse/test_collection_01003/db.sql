drop table if exists test;
create table test (project LowCardinality(String)) engine=MergeTree() order by project;
insert into test values ('val1'), ('val2'), ('val3');
