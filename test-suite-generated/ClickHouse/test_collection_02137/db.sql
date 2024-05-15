drop table if exists test;
create table test (x String) Engine=StripeLog;
insert into test values (0);
