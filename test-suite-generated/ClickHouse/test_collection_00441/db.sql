drop table if exists t_00725_2;
drop table if exists s_00725_2;
create table t_00725_2(a Int64, b Int64) engine = TinyLog;
insert into t_00725_2 values(1,1);
insert into t_00725_2 values(2,2);
create table s_00725_2(a Int64, b Int64) engine = TinyLog;
insert into s_00725_2 values(1,1);
