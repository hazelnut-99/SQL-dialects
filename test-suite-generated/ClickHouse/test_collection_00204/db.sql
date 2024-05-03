DROP TABLE IF EXISTS test_prewhere_default_column;
DROP TABLE IF EXISTS test_prewhere_column_type;
CREATE TABLE test_prewhere_default_column (APIKey UInt8, SessionType UInt8) ENGINE = MergeTree() PARTITION BY APIKey ORDER BY tuple();
INSERT INTO test_prewhere_default_column VALUES( 42, 42 );
ALTER TABLE test_prewhere_default_column ADD COLUMN OperatingSystem UInt64 DEFAULT SessionType+1;
