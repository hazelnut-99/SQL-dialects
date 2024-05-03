drop table if exists tab;
create table tab (id UInt32, haystack String, pattern String) engine = MergeTree() order by id;
insert into tab values (1, 'aaaxxxaa\0xxx', 'x');
