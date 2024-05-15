drop table if exists test_tz_hour;
create table test_tz_hour(t DateTime, x String) engine MergeTree partition by toYYYYMMDD(t) order by x;
insert into test_tz_hour select toDateTime('2021-06-01 00:00:00', 'UTC') + number * 600, 'x' from numbers(1e3);
