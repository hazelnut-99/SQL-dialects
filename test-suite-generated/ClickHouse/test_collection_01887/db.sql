drop table if exists test1;
drop table if exists t1;
drop table if exists t2;
create table t1 (date Date, a Float64, b String) Engine=MergeTree ORDER BY date;
create table t2 (date Date, a Float64, b String) Engine=MergeTree ORDER BY date;
insert into t1(a, b) values (1, 'one'), (2, 'two');
insert into t2(a, b) values (2, 'two'), (3, 'three');
