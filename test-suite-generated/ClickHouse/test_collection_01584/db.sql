insert into table function file("data1622.json", "TSV", "value String") VALUES ('{"a":1}');
drop table if exists json;
create table json(a int, b int default 7, c default a + b) engine File(JSONEachRow, 'data1622.json');
