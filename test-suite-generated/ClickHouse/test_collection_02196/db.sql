DROP TABLE IF EXISTS t02176;
CREATE TABLE t02176(timestamp DateTime) ENGINE = MergeTree
PARTITION BY toStartOfWeek(timestamp)
ORDER BY tuple();
INSERT INTO t02176 VALUES (1559952000);
