DROP TABLE IF EXISTS t_sample_factor;
CREATE TABLE t_sample_factor(a UInt64, b UInt64) ENGINE = MergeTree ORDER BY (a, b) SAMPLE BY b;
INSERT INTO t_sample_factor(a, b) VALUES (1, 2), (3, 4);
