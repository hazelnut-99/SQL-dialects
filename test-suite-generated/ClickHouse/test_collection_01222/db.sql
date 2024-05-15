DROP TABLE IF EXISTS test_datetime;
CREATE TABLE test_datetime (time DateTime) ENGINE=MergeTree PARTITION BY time ORDER BY time;
INSERT INTO test_datetime (time) VALUES (toDate(18012));
