drop table if exists test;
drop table if exists test2;
create table test(x1 Int, x2 Int, x3 Int) engine=Memory();
insert into test values (1, 10, 100), (10, 1, 10), (100, 100, 1);
insert into test values (1, 10, 100), (10, 1, 10), (100, 100, 1);
create table test2(x1 Int, x2 Int, x3 Int) engine=Memory;
insert into test2 values (1, 10, 100), (10, 1, 10), (100, 100, 1);
