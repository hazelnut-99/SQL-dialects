DROP TABLE IF EXISTS merge_tree_in_subqueries;
CREATE TABLE merge_tree_in_subqueries (id UInt64, name String, num UInt64) ENGINE = MergeTree ORDER BY (id, name);
INSERT INTO merge_tree_in_subqueries VALUES(1, 'test1', 42);
INSERT INTO merge_tree_in_subqueries VALUES(2, 'test2', 8);
INSERT INTO merge_tree_in_subqueries VALUES(3, 'test3', 8);
INSERT INTO merge_tree_in_subqueries VALUES(4, 'test4', 1985);
INSERT INTO merge_tree_in_subqueries VALUES(5, 'test5', 0);
