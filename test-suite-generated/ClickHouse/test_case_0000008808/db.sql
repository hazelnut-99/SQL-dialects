drop table if exists t;
drop table if exists s;
drop table if exists y;
create table t(a Int64, b Int64) engine = TinyLog;
create table s(a Int64, b Int64) engine = TinyLog;
create table y(a Int64, b Int64) engine = TinyLog;
insert into t values (1,1), (2,2);
insert into s values (1,1);
insert into y values (1,1);
