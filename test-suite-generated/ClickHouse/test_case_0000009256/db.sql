drop table if exists tab_00717;
create table tab_00717 (a String, b StringWithDictionary) engine = MergeTree order by a;
insert into tab_00717 values ('a_1', 'b_1'), ('a_2', 'b_2');
