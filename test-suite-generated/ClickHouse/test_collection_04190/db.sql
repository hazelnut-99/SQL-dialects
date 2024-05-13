DROP TABLE IF EXISTS test_xy;
DROP TABLE IF EXISTS updates;
CREATE TABLE test_xy
(
    `x` Int32,
    `y` String
)
ENGINE = MergeTree
ORDER BY x;
CREATE TABLE updates
(
    `x` Int32,
    `y` String
)
ENGINE = MergeTree
ORDER BY x;
INSERT INTO test_xy(x, y) VALUES (1, 'a1'), (2, 'a2'), (3, 'a3');
INSERT INTO updates(x, y) VALUES  (2, 'b2'), (3, 'b3');
