drop table if exists t;
drop table if exists s;
create table t(a Int64, b Int64) engine = Memory;
create table s(a Int64, b Int64) engine = Memory;
insert into t values (1,1), (2,2);
insert into s values (1,1);
