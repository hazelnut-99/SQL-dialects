drop table if exists test;
create table test (x Tuple(a UInt32, b UInt32)) engine=Memory();
