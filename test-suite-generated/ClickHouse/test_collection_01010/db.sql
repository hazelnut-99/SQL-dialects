drop table if exists t;
create table t engine Memory as select * from numbers(2);
