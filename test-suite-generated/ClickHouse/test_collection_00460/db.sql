DROP TABLE IF EXISTS test_generic_events_all;
CREATE TABLE test_generic_events_all (APIKey UInt8, SessionType UInt8) ENGINE = MergeTree() PARTITION BY APIKey ORDER BY tuple();
INSERT INTO test_generic_events_all VALUES( 42, 42 );
ALTER TABLE test_generic_events_all ADD COLUMN OperatingSystem UInt64 DEFAULT 42;
