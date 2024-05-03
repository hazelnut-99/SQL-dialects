DROP TABLE IF EXISTS t;
CREATE TABLE t (A Array(Int64)) Engine = MergeTree ORDER BY tuple();
INSERT INTO t VALUES ([1,2,3]), ([4,5,6]), ([7,8,9]);
