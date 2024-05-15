CREATE TABLE ttttttt
(
    `timestamp` DateTime,
    `col1` Float64,
    `col2` Float64,
    `col3` Float64
)
ENGINE = MergeTree()
ORDER BY tuple();
INSERT INTO ttttttt VALUES ('2023-02-20 00:00:00', 1, 2, 3);
