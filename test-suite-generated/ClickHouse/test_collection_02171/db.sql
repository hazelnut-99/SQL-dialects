drop table if exists test;
create table test (number UInt64) engine=File('Parquet');
insert into test select * from numbers(10);
truncate table test;
drop table test;
create table test (number UInt64) engine=File('Parquet', 'test_02155/test1/data.Parquet');
insert into test select * from numbers(10, 10); -- { serverError CANNOT_APPEND_TO_FILE }
drop table test;
insert into table function file(concat(currentDatabase(), '/test2/data.Parquet'), 'Parquet', 'number UInt64') select * from numbers(10, 10); -- { serverError CANNOT_APPEND_TO_FILE }
