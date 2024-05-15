DROP TABLE IF EXISTS table;
CREATE TABLE table (id Int32, values Array(Tuple(LowCardinality(String), Int32)), date Date) ENGINE MergeTree() PARTITION BY toYYYYMM(date) ORDER BY (id, date);
