DROP TABLE IF EXISTS cool_table;
CREATE TABLE IF NOT EXISTS cool_table
(
    id UInt64,
    n Nested(n UInt64, lc1 LowCardinality(String))
)
ENGINE = MergeTree
ORDER BY id;
INSERT INTO cool_table SELECT number, range(number), range(number) FROM numbers(10);
ALTER TABLE cool_table ADD COLUMN IF NOT EXISTS `n.lc2` Array(LowCardinality(String));
