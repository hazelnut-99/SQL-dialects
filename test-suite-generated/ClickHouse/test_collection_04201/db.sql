drop table if exists tab_v;
drop table if exists tab;
create table tab (x UInt64, y UInt64) engine MergeTree() order by (x, y);
insert into tab values(1, 1);
insert into tab values(1, 2);
insert into tab values(2, 1);
create view tab_v as select distinct(x) from tab;
