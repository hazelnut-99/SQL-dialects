drop table if exists funnel_test;
create table funnel_test (timestamp UInt32, event UInt32) engine=Memory;
insert into funnel_test values (0,1000),(1,1001),(2,1002),(3,1003),(4,1004),(5,1005),(6,1006),(7,1007),(8,1008);
drop table if exists funnel_test2;
create table funnel_test2 (uid UInt32 default 1,timestamp DateTime, event UInt32) engine=Memory;
insert into funnel_test2(timestamp, event) values  ('2018-01-01 01:01:01',1001),('2018-01-01 01:01:02',1002),('2018-01-01 01:01:03',1003),('2018-01-01 01:01:04',1004),('2018-01-01 01:01:05',1005),('2018-01-01 01:01:06',1006),('2018-01-01 01:01:07',1007),('2018-01-01 01:01:08',1008);
drop table if exists funnel_test_u64;
create table funnel_test_u64 (uid UInt32 default 1,timestamp UInt64, event UInt32) engine=Memory;
insert into funnel_test_u64(timestamp, event) values  ( 1e14 + 1 ,1001),(1e14 + 2,1002),(1e14 + 3,1003),(1e14 + 4,1004),(1e14 + 5,1005),(1e14 + 6,1006),(1e14 + 7,1007),(1e14 + 8,1008);
drop table if exists funnel_test_strict;
create table funnel_test_strict (timestamp UInt32, event UInt32) engine=Memory;
insert into funnel_test_strict values (00,1000),(10,1001),(20,1002),(30,1003),(40,1004),(50,1005),(51,1005),(60,1006),(70,1007),(80,1008);
