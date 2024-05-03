drop table if exists t_00725_3;
drop table if exists z_00725_3;
create table t_00725_3(a Int64, b Int64) engine = TinyLog;
insert into t_00725_3 values(1,1);
insert into t_00725_3 values(2,2);
create table z_00725_3(c Int64, d Int64, e Int64) engine = TinyLog;
insert into z_00725_3 values(1,1,1);
