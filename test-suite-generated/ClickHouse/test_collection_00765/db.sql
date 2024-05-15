DROP TABLE IF EXISTS t0;
DROP TABLE IF EXISTS t1;
CREATE TABLE t0 (x UInt32, y UInt64) engine = MergeTree ORDER BY (x,y);
CREATE TABLE t1 (x UInt32, y UInt64) engine = MergeTree ORDER BY (x,y);
