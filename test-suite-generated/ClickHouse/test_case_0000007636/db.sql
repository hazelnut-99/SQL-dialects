drop table if exists t_00818;
drop table if exists s_00818;
create table t_00818(a Nullable(Int64), b Nullable(Int64), c Nullable(String)) engine = Memory;
create table s_00818(a Nullable(Int64), b Nullable(Int64), c Nullable(String)) engine = Memory;
insert into t_00818 values(1,1,'a'), (2,2,'b');
insert into s_00818 values(1,1,'a');
