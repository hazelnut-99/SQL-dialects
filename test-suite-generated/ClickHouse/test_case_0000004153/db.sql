drop table if exists test;
create table test (a String)  Engine MergeTree order by a partition by a;
insert into test values('1'), ('1.1'), ('1.2'), ('1.12');
