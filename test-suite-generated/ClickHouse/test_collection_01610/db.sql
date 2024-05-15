drop table if exists table_map;
create table table_map (a Map(String, String), b String, c Array(String), d Array(String)) engine = Memory;
insert into table_map values ({'name':'zhangsan', 'age':'10'}, 'name', ['name', 'age'], ['zhangsan', '10']), ({'name':'lisi', 'gender':'female'},'age',['name', 'gender'], ['lisi', 'female']);
drop table if exists table_map;
CREATE TABLE table_map (a Map(UInt8, Int), b UInt8, c UInt32, d Array(String), e Array(String)) engine = MergeTree order by tuple();
insert into table_map select map(number, number), number, number, [number, number, number], [number*2, number*3, number*4] from numbers(1000, 3);
drop table if exists table_map;
