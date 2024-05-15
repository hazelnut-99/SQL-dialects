DROP TABLE IF EXISTS rows_events_test;
CREATE TABLE rows_events_test (k UInt32, v UInt32) ENGINE = MergeTree ORDER BY k;
INSERT INTO /* test 01413, query 1 */ rows_events_test VALUES (1,1);
SYSTEM FLUSH LOGS;
INSERT INTO /* test 01413, query 2 */ rows_events_test VALUES (2,2), (3,3);
SYSTEM FLUSH LOGS;
