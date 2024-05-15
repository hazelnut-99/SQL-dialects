drop table if exists test_in;
create table test_in (a LowCardinality(String)) Engine = MergeTree order by a;
insert into test_in values ('a');
