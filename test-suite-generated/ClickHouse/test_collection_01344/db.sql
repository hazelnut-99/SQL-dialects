DROP TABLE IF EXISTS test;
CREATE TABLE test (`int8` Int8, `int16` Int16, `int32` Int32, `int64` Int64, INDEX idx (`int8`, `int16`, `int32`, `int64`) TYPE bloom_filter(0.01) GRANULARITY 8192 ) ENGINE = MergeTree() ORDER BY `int8`;
INSERT INTO test VALUES (-1, -1, -1, -1);
