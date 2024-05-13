create table test_memory (number UInt64) engine=Memory;
insert into test_memory select 42;
