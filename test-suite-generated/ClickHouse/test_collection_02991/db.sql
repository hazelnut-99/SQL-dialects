drop table if exists t_json_merge;
create table t_json_merge (id UInt64, s1 String, s2 String) engine = Memory;
insert into t_json_merge select number, format('{{ "k{0}": {0} }}', toString(number * 2)), format('{{ "k{0}": {0} }}', toString(number * 2 + 1)) from numbers(5);
insert into t_json_merge select number, format('{{ "k{0}": {0} }}', toString(number * 2)), format('{{ "k{0}": {0}, "k{1}": 222 }}', toString(number * 2 + 1), toString(number * 2)) from numbers(5, 5);
