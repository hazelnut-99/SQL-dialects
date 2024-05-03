drop table IF EXISTS tab1;
drop table IF EXISTS tab1_copy;
create table tab1 (a1 Int32, b1 Int32) engine = MergeTree order by a1;
create table tab1_copy (a1 Int32, b1 Int32) engine = MergeTree order by a1;
insert into tab1 values (1, 2);
insert into tab1_copy values (2, 3);
