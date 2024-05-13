desc format(CSV, '1,2,"[1,2,3]","[[\'abc\'], [], [\'d\', \'e\']]"');
drop table if exists test;
create table test as format(JSONEachRow, 
$$
{"a": "Hello", "b": 111}
{"a": "World", "b": 123}
{"a": "Hello", "b": 111}
{"a": "Hello", "b": 131}
{"a": "World", "b": 123}
$$);
