create table test_memory (number UInt64) engine=Memory;
insert into test_memory select 42;
drop table test_memory;
create table test_merge_tree (number UInt64) engine=MergeTree order by number;
insert into test_merge_tree select 42;
