drop table if exists t;
create table t (n Int32, s String) engine=MergeTree order by n;
insert into t select number, 'hello, world!' from numbers (5);
