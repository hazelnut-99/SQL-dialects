drop table if exists test;
create table test(`a` Nullable(Int32), `b` Nullable(Int32)) ENGINE = Memory;
insert into test (a,b) values (1,null), (2,3), (4, 5), (6,null);
