DROP TABLE IF EXISTS merge_tree_deduplication;
SYSTEM STOP MERGES merge_tree_deduplication;
DROP TABLE IF EXISTS merge_tree_deduplication;
DROP TABLE IF EXISTS merge_tree_no_deduplication;
CREATE TABLE merge_tree_no_deduplication
(
    key UInt64,
    value String
)
ENGINE=MergeTree()
ORDER BY key;
INSERT INTO merge_tree_no_deduplication (key, value) VALUES (1, '1');
INSERT INTO merge_tree_no_deduplication (key, value) VALUES (1, '1');
