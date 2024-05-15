drop table if exists mt;
drop table if exists rmt sync;
create table mt (n UInt64, s String) engine = MergeTree partition by intDiv(n, 10) order by n;
insert into mt values (3, '3'), (4, '4');
