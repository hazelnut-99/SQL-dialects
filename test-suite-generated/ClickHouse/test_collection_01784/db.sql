DROP TABLE IF EXISTS group_by_pk;
CREATE TABLE group_by_pk (k UInt64, v UInt64)
ENGINE = MergeTree ORDER BY k PARTITION BY v % 50;
INSERT INTO group_by_pk SELECT number / 100, number FROM numbers(1000);
