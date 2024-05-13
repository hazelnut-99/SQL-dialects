drop table if exists test;
create table test(a Int64) Engine=MergeTree order by tuple();
