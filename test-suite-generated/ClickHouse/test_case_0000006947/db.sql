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
CREATE TABLE table1
(
    id String,
    device UUID
)
ENGINE = MergeTree() ORDER BY tuple();
INSERT INTO table1 VALUES ('notEmpty', '417ddc5d-e556-4d27-95dd-a34d84e46a50');
INSERT INTO table1 VALUES ('', '417ddc5d-e556-4d27-95dd-a34d84e46a50');
INSERT INTO table1 VALUES ('', '00000000-0000-0000-0000-000000000000');
