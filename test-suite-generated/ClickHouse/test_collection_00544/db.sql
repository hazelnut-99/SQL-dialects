drop table if exists tab_00612;
create table tab_00612 (key UInt64, arr Array(UInt64)) Engine = MergeTree order by key;
insert into tab_00612 values (1, [1]);
insert into tab_00612 values (2, [2]);
drop table if exists tab_00612;
create table tab_00612 (key UInt64, n Nested(x UInt64)) Engine = MergeTree order by key;
insert into tab_00612 values (1, [1]);
insert into tab_00612 values (2, [2]);
