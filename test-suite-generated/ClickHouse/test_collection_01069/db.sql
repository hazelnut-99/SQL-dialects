DROP TABLE IF EXISTS table_for_rename_nested;
CREATE TABLE table_for_rename_nested
(
    date Date,
    key UInt64,
    n Nested(x UInt32, y String),
    value1 Array(Array(LowCardinality(String))) -- column with several files
)
ENGINE = MergeTree()
PARTITION BY date
ORDER BY key;
INSERT INTO table_for_rename_nested (date, key, n.x, n.y, value1) SELECT toDate('2019-10-01'), number, [number + 1, number + 2, number + 3], ['a', 'b', 'c'], [[toString(number)]] FROM numbers(10);
SHOW CREATE TABLE table_for_rename_nested;
ALTER TABLE table_for_rename_nested RENAME COLUMN n.x TO n.renamed_x;
ALTER TABLE table_for_rename_nested RENAME COLUMN n.y TO n.renamed_y;
SHOW CREATE TABLE table_for_rename_nested;
