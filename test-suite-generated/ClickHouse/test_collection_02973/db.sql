drop table if exists test;
create table test (name String, uuid UUID) engine=Memory();
insert into test select '1', '00000000-0000-0000-0000-000000000000';
insert into test select '2', '00000000-0000-0000-0000-000000000000';
insert into test select '3', '00000000-0000-0000-0000-000000000000';
insert into test select '4', '00000000-0000-0000-0000-000000000000';
insert into test select '5', '00000000-0000-0000-0000-000000000000';
