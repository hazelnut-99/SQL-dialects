DROP TABLE IF EXISTS saved_intervals_tmp;
create table saved_intervals_tmp Engine=Memory as SELECT number as EventID, toIntervalSecond(number+1) as v1, toIntervalHour(number+2) as v2, toIntervalNanosecond(number+3) as v3 from numbers(2);
DROP TABLE IF EXISTS saved_intervals_tmp;
DROP TABLE IF EXISTS saved_intervals_mgt;
create table saved_intervals_mgt Engine=MergeTree() ORDER BY EventID as SELECT number as EventID, toIntervalSecond(number+1) as v1, toIntervalHour(number+2) as v2, toIntervalNanosecond(number+3) as v3 from numbers(2);
