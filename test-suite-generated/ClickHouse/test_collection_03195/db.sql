DROP TABLE IF EXISTS t;
CREATE TABLE t (A Array(Int64)) Engine = MergeTree ORDER BY tuple();
