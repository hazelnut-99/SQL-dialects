drop table if exists table_map;
create table table_map (a Map(String, String), b String, c Array(String), d Array(String)) engine = Memory;
insert into table_map values ({'name':'zhangsan', 'age':'10'}, 'name', ['name', 'age'], ['zhangsan', '10']), ({'name':'lisi', 'gender':'female'},'age',['name', 'gender'], ['lisi', 'female']);
