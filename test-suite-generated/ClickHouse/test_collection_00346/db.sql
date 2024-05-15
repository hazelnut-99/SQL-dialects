drop table if exists orin_test;
create table orin_test (c1 Int32) engine=Memory;
insert into orin_test values(1), (100);
