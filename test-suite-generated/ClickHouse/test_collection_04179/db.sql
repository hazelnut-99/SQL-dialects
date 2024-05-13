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
optimize table test_block_mismatch final;
system stop merges test_block_mismatch;
INSERT INTO test_block_mismatch VALUES (2, toDateTime('2023-01-01 12:12:12'));
INSERT INTO test_block_mismatch VALUES (2, toDateTime('2023-01-01 12:12:12'));
CREATE TABLE test_block_mismatch_sk1
(
    a UInt32,
    b DateTime
)
ENGINE = ReplacingMergeTree
PARTITION BY toYYYYMM(b)
PRIMARY KEY (toDate(b))
ORDER BY (toDate(b), a);
INSERT INTO test_block_mismatch_sk1  VALUES (1, toDateTime('2023-01-01 12:12:12'));
INSERT INTO test_block_mismatch_sk1 VALUES (1, toDateTime('2023-01-01 12:12:12'));
INSERT INTO test_block_mismatch_sk1 VALUES (1, toDateTime('2023-02-02 12:12:12'));
INSERT INTO test_block_mismatch_sk1 VALUES (1, toDateTime('2023-02-02 12:12:12'));
optimize table test_block_mismatch_sk1 final;
system stop merges test_block_mismatch_sk1;
INSERT INTO test_block_mismatch_sk1 VALUES (2, toDateTime('2023-01-01 12:12:12'));
INSERT INTO test_block_mismatch_sk1 VALUES (2, toDateTime('2023-01-01 12:12:12'));
CREATE TABLE test_block_mismatch_sk2
(
    a UInt32,
    b DateTime
)
ENGINE = ReplacingMergeTree
PARTITION BY toYYYYMM(b)
PRIMARY KEY (a)
ORDER BY (a, toDate(b));
INSERT INTO test_block_mismatch_sk2  VALUES (1, toDateTime('2023-01-01 12:12:12'));
INSERT INTO test_block_mismatch_sk2 VALUES (1, toDateTime('2023-01-01 12:12:12'));
INSERT INTO test_block_mismatch_sk2 VALUES (1, toDateTime('2023-02-02 12:12:12'));
INSERT INTO test_block_mismatch_sk2 VALUES (1, toDateTime('2023-02-02 12:12:12'));
