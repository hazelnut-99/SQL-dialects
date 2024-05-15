drop table if exists tab;
drop table if exists tab2;
drop table if exists tab3;
drop table if exists tab4;
drop table if exists tab5;
create table tab (a UInt32, b UInt32, c UInt32, d UInt32) engine = MergeTree order by ((a + b) * c, sin(a / b));
insert into tab select number, number, number, number from numbers(5);
insert into tab select number, number, number, number from numbers(5);
