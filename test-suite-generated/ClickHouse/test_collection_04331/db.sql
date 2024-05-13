DROP TABLE IF EXISTS dist_tbl;
DROP TABLE IF EXISTS local_tbl;
CREATE TABLE local_tbl (`key` UInt32, `value` UInt32 DEFAULT 42) ENGINE = MergeTree ORDER BY key;
