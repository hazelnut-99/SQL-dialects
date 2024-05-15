DROP TABLE IF EXISTS tags;
CREATE TABLE tags (dev_tag String) ENGINE = Memory AS SELECT '1';
DROP TABLE IF EXISTS users;
CREATE TABLE users
(
    `id` Int64,
    `name` String
)
ENGINE = ReplacingMergeTree
ORDER BY (id, name);
INSERT INTO users VALUES (1, 'pufit'), (1, 'pufit2'), (1, 'pufit3');
