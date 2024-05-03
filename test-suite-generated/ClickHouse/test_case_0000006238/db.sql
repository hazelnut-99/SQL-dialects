DROP TABLE IF EXISTS t1_00844;
DROP TABLE IF EXISTS t2_00844;
CREATE TABLE IF NOT EXISTS t1_00844 (
f1 UInt32,
f2 String
) ENGINE = MergeTree ORDER BY (f1);
CREATE TABLE IF NOT EXISTS t2_00844 (
f1 String,
f3 String
) ENGINE = MergeTree ORDER BY (f1);
insert into t1_00844 values(1,'1');
insert into t2_00844 values('1','name1');
