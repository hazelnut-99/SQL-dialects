create table test (number UInt64) engine=MergeTree order by number;
insert into test select * from numbers(50000000);
