CREATE TABLE test_block_mismatch
(
    a UInt32,
    b DateTime
)
ENGINE = ReplacingMergeTree
PARTITION BY toYYYYMM(b)
ORDER BY (toDate(b), a);
INSERT INTO test_block_mismatch VALUES (1, toDateTime('2023-01-01 12:12:12'));
INSERT INTO test_block_mismatch VALUES (1, toDateTime('2023-01-01 12:12:12'));
INSERT INTO test_block_mismatch VALUES (1, toDateTime('2023-02-02 12:12:12'));
INSERT INTO test_block_mismatch VALUES (1, toDateTime('2023-02-02 12:12:12'));
