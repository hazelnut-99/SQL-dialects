drop table if exists t_row_exists;
create table t_row_exists(a int, b int) engine=MergeTree order by a;
drop table t_row_exists;
create table t_row_exists(a int, _row_exists int) engine=Memory;
insert into t_row_exists values(1,1);
