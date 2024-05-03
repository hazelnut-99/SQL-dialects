drop table if exists t;
create table t (n int, s String) engine MergeTree order by n;
insert into t values (1, 'a');
