DROP TABLE IF EXISTS data_01875_1;
DROP TABLE IF EXISTS data_01875_2;
DROP TABLE IF EXISTS data_01875_3;
CREATE TABLE data_01875_1 Engine=MergeTree ORDER BY number PARTITION BY bitShiftRight(number, 8) + 1 AS SELECT * FROM numbers(16384);
CREATE TABLE data_01875_2 Engine=MergeTree ORDER BY number PARTITION BY bitShiftRight(number, 8) + 1 AS SELECT * FROM numbers(16384);
CREATE TABLE data_01875_3 Engine=MergeTree ORDER BY number PARTITION BY bitShiftRight(number, 8) + 1 AS SELECT * FROM numbers(16384);
