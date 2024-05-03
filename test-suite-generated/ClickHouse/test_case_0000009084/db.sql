CREATE TABLE test
(
    `x` Tuple(UInt64, UInt64)
)
ENGINE = MergeTree
ORDER BY x;
INSERT INTO test SELECT (number, number) FROM numbers(1000000);
ALTER TABLE test DETACH PARTITION tuple();
ALTER TABLE test ATTACH PARTITION tuple();
