drop table if exists tab1;
drop table if exists tab2;
create table tab1 (a1 Int32, b1 Int32) engine = MergeTree order by a1;
create table tab2 (a2 Int32, b2 Int32) engine = MergeTree order by a2;
insert into tab1 values (1, 2);
insert into tab2 values (2, 3);
insert into tab2 values (6, 4);
