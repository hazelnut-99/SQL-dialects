DROP TABLE IF EXISTS test;
CREATE TABLE test
(
    c1 String,
    c2 String,
    c3 String
)
ENGINE = ReplacingMergeTree
ORDER BY (c1, c3);
INSERT INTO test(c1, c2, c3) VALUES ('', '', '1'), ('', '', '2'),('v1', 'v2', '3'),('v1', 'v2', '4'),('v1', 'v2', '5');
