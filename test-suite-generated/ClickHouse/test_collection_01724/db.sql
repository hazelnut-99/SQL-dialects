drop table if exists x;
drop table if exists mt;
create table mt (n UInt64) engine=MergeTree order by n partition by n % 10;
insert into mt select * from numbers(100);
