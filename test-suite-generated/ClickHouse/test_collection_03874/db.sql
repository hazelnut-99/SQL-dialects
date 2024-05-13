DROP TEMPORARY TABLE IF EXISTS table_merge_tree_02525;
CREATE TEMPORARY TABLE table_merge_tree_02525
(
    id UInt64,
    info String
)
ENGINE = MergeTree
ORDER BY id
PRIMARY KEY id;
INSERT INTO table_merge_tree_02525 VALUES (1, 'a'), (2, 'b');
INSERT INTO table_merge_tree_02525 VALUES (3, 'c');
OPTIMIZE TABLE table_merge_tree_02525 FINAL;
