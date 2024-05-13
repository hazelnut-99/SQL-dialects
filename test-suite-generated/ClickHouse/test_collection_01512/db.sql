drop table if exists wt;
create table wt (a Int, b Int) engine = Memory;
insert into wt select 0, number from numbers(5);
