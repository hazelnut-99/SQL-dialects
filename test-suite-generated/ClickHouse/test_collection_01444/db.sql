drop table if exists xy;
drop table if exists xy;
drop table if exists xyz;
drop table if exists xyz;
drop table if exists test;
create table test(d Date, k Int64, s String) Engine=MergeTree partition by (toYYYYMM(d),k) order by (d, k);
insert into test values ('2020-01-01', 1, '');
insert into test values ('2020-01-02', 1, '');
