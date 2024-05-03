drop table if exists bad_date_time;
create table bad_date_time (time Datetime('Asia/Istanbul'), count UInt16) Engine = MergeTree() ORDER BY (time);
insert into bad_date_time values('2020-12-20 20:59:52', 1),  ('2020-12-20 21:59:52', 1),  ('2020-12-20 01:59:52', 1);
