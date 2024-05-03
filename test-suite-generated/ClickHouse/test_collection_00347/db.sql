drop table if exists tab_00712_2;
create table tab_00712_2 (a UInt32, b UInt32) engine = MergeTree order by b % 2 sample by b % 2;
insert into tab_00712_2 values (1, 2), (1, 4);
