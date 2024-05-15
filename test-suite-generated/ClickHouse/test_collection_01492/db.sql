drop table if exists test_index;
create table test_index(date Date) engine MergeTree partition by toYYYYMM(date) order by date;
insert into test_index values('2020-10-30');
drop table if exists test_index;
