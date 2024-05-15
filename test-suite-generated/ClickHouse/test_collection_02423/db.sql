drop table if exists t;
drop table if exists mv;
create table t engine=Memory empty as select 1;
show create table t;
