DROP TABLE IF EXISTS test_table;
DROP TABLE IF EXISTS test_view;
DROP TABLE IF EXISTS test_view_filtered;
CREATE MATERIALIZED VIEW test_view (Rows UInt64,  MaxHitTime DateTime('America/Los_Angeles')) ENGINE = Memory AS SELECT count() AS Rows, max(UTCEventTime) AS MaxHitTime FROM test_table;
