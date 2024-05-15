drop table if exists t_00725_4;
drop table if exists s_00725_4;
create table t_00725_4(a Int64, b Int64, c String) engine = TinyLog;
insert into t_00725_4 values(1,1,'a'),(2,2,'b');
create table s_00725_4(a Int64, b Int64, c String) engine = TinyLog;
insert into s_00725_4 values(1,1,'a');
