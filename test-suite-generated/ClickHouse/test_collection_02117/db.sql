DROP TABLE IF EXISTS merge_tree_pk SYNC;
CREATE TABLE merge_tree_pk
(
    key UInt64,
    value String
)
ENGINE = ReplacingMergeTree()
PRIMARY KEY key;
SHOW CREATE TABLE merge_tree_pk;
INSERT INTO merge_tree_pk VALUES (1, 'a');
INSERT INTO merge_tree_pk VALUES (2, 'b');
INSERT INTO merge_tree_pk VALUES (1, 'c');
DETACH TABLE merge_tree_pk;
ATTACH TABLE merge_tree_pk;
DROP TABLE IF EXISTS merge_tree_pk SYNC;
DROP TABLE IF EXISTS merge_tree_pk_sql SYNC;
CREATE TABLE merge_tree_pk_sql
(
    key UInt64,
    value String,
    PRIMARY KEY (key)
)
ENGINE = ReplacingMergeTree();
SHOW CREATE TABLE merge_tree_pk_sql;
INSERT INTO merge_tree_pk_sql VALUES (1, 'a');
INSERT INTO merge_tree_pk_sql VALUES (2, 'b');
INSERT INTO merge_tree_pk_sql VALUES (1, 'c');
DETACH TABLE merge_tree_pk_sql;
ATTACH TABLE merge_tree_pk_sql;
