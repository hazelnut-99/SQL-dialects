drop table if exists dist_01247;
drop table if exists data_01247;
drop table if exists dist_01247;
drop table if exists data_01247;
create table data_01247 engine=Memory() as select number key, 0 value from numbers(2);
