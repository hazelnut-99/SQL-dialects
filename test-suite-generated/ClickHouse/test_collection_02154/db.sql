DROP TABLE IF EXISTS t_02147;
DROP TABLE IF EXISTS t_02147_dist;
DROP TABLE IF EXISTS t_02147_merge;
CREATE TABLE t_02147 (date DateTime, v UInt32)
ENGINE = MergeTree ORDER BY toStartOfHour(date);
CREATE TABLE t_02147_merge AS t_02147 ENGINE = Merge(currentDatabase(), 't_02147');
drop table t_02147;
CREATE TABLE t_02147 (date DateTime, v UInt32) ENGINE = MergeTree ORDER BY date;
