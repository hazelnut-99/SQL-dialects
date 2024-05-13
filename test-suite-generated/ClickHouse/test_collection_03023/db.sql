drop table if exists test;
CREATE TABLE test
(
    d DateTime,
    a String,
    b UInt64
)
ENGINE = MergeTree
PARTITION BY toDate(d)
ORDER BY d;
