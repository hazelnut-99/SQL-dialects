DROP TABLE IF EXISTS bug_36995;
CREATE TABLE bug_36995(
    `time` DateTime,
    `product` String)
ENGINE = MergeTree
ORDER BY time AS
SELECT '2022-01-01 00:00:00','1';
