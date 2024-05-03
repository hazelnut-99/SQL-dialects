drop table if exists t;
create table t (id UInt32, a Int) engine = MergeTree order by id;
insert into t values (1, 0) (2, 1) (3, 0) (4, 0) (5, 0);
alter table t add column s String default 'foo';
drop table t;
create table t (id UInt32, a Int) engine = MergeTree order by id;
insert into t values (1, 1) (2, 1) (3, 0) (4, 0) (5, 0);
alter table t add column s String default 'foo';
