DROP TABLE IF EXISTS modify_sample;
CREATE TABLE modify_sample (d Date DEFAULT '2000-01-01', x UInt8) ENGINE = MergeTree PARTITION BY d ORDER BY x;
ALTER TABLE modify_sample MODIFY SAMPLE BY x;
