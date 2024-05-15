drop table if exists tab_00712_2;
create table tab_00712_2 (a UInt32, b UInt32) engine = MergeTree order by b % 2 sample by b % 2;
insert into tab_00712_2 values (1, 2), (1, 4);
drop table if exists tab_00712_2;
DROP TABLE IF EXISTS sample_prewhere;
CREATE TABLE sample_prewhere (CounterID UInt32, UserID UInt64) ENGINE = MergeTree ORDER BY UserID SAMPLE BY UserID;
