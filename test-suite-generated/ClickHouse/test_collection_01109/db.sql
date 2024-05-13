drop table if exists t1;
drop table if exists t2;
drop table if exists t3;
create table t1 (a UInt32, b String) engine = Memory;
create table t2 (c UInt32, d String) engine = Memory;
create table t3 (a UInt32) engine = Memory;
insert into t1 values (1, 'x'), (2, 'y'), (3, 'z');
insert into t2 values (2, 'w'), (4, 'y');
insert into t3 values (3);
