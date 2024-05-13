DROP TABLE IF EXISTS data_table;
CREATE TABLE data_table (id UInt64, longitude Float64, latitude Float64) ENGINE=MergeTree ORDER BY id;
INSERT INTO data_table SELECT number, number, number FROM numbers(10);
