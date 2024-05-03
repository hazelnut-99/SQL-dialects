DROP TABLE IF EXISTS literal_alias_misclassification;
CREATE TABLE literal_alias_misclassification
(
    `id` Int64,
    `a` Nullable(String),
    `b` Nullable(Int64)
)
ENGINE = MergeTree
ORDER BY id;
INSERT INTO literal_alias_misclassification values(1, 'a', 1);
INSERT INTO literal_alias_misclassification values(2, 'b', 2);
