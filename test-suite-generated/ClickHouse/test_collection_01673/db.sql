drop table if exists t;
create table t (i int, j int) engine MergeTree order by i;
insert into t values (1, 2);
alter table t add projection x (select * order by j);
insert into t values (1, 4);
insert into t values (1, 5);
