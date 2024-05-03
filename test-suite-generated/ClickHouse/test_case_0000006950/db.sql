DROP TABLE IF EXISTS test_02187;
CREATE TABLE test_02187 (
    info String,
    id Int32
)
ENGINE = ReplacingMergeTree(id)
ORDER BY id;
INSERT INTO TABLE test_02187 VALUES ('nothing', 1);
INSERT INTO TABLE test_02187 VALUES ('something', 1);
