drop table if exists test;
create table test (x UInt64) engine=Memory();
insert into test select number % 2 ? NULL : 42 as x from numbers(2);
drop table test;
create table test (x LowCardinality(String) default 'Hello') engine=Memory();
insert into test select (number % 2 ? NULL : 'World')::LowCardinality(Nullable(String)) from numbers(2);
