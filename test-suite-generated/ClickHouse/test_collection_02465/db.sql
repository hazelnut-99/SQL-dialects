drop table if exists t;
drop table if exists test;
create table test (name String, time Int64) engine MergeTree order by time;
insert into test values ('hello world', 1662336000241);
