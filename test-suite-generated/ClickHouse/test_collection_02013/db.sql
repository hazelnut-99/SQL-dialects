DROP TABLE IF EXISTS abc;
CREATE TABLE abc
(
    `f1` String,
    `f2` String
)
ENGINE = MergeTree()
ORDER BY f1;
