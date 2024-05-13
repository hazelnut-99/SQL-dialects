DROP TABLE IF EXISTS t_data_version;
CREATE TABLE t_data_version (a UInt64, b UInt64) ENGINE = MergeTree ORDER BY a;
INSERT INTO t_data_version VALUES (1, 1);
INSERT INTO t_data_version VALUES (2, 2);
