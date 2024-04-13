create table a (id integer);
insert into a values (1729);
create view va as (with v as (select * from a) select * from v);
with a as (select * from va) select * from a;
