drop table if exists rate_test;
create table rate_test (timestamp UInt32, event UInt32) engine=Memory;
insert into rate_test values (0,1000),(1,1001),(2,1002),(3,1003),(4,1004),(5,1005),(6,1006),(7,1007),(8,1008);
drop table if exists rate_test2;
create table rate_test2 (uid UInt32 default 1,timestamp DateTime, event UInt32) engine=Memory;
insert into rate_test2(timestamp, event) values ('2018-01-01 01:01:01',1001),('2018-01-01 01:01:02',1002),('2018-01-01 01:01:03',1003),('2018-01-01 01:01:04',1004),('2018-01-01 01:01:05',1005),('2018-01-01 01:01:06',1006),('2018-01-01 01:01:07',1007),('2018-01-01 01:01:08',1008);
