drop table if exists test;
create table test (number UInt64) engine=File('Parquet');
insert into test select * from numbers(10);
