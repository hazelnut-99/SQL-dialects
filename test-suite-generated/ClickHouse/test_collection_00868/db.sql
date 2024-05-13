DROP TABLE IF EXISTS minmax_idx;
DROP TABLE IF EXISTS minmax_idx2;
CREATE TABLE minmax_idx
(
    u64 UInt64,
    i32 Int32
) ENGINE = MergeTree()
ORDER BY u64;
INSERT INTO minmax_idx VALUES (1, 2);
ALTER TABLE minmax_idx ADD INDEX idx1 u64 * i32 TYPE minmax GRANULARITY 10;
ALTER TABLE minmax_idx ADD INDEX idx2 u64 + i32 TYPE minmax GRANULARITY 10;
ALTER TABLE minmax_idx ADD INDEX idx3 (u64 - i32) TYPE minmax GRANULARITY 10 AFTER idx1;
SHOW CREATE TABLE minmax_idx;
