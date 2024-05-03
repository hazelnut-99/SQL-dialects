DROP TABLE IF EXISTS t0;
CREATE TABLE t0 (vkey UInt32, c0 Float32, primary key(c0)) engine = AggregatingMergeTree;
insert into t0 values (19000, 1);
