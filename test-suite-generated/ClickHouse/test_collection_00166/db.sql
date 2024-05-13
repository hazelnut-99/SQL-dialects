drop table if exists enums;
create table enums (e Enum8('a' = 0, 'b' = 1, 'c' = 2, 'd' = 3)) engine = TinyLog;
insert into enums values ('d'), ('b'), ('a'), ('c'), ('a'), ('d');
