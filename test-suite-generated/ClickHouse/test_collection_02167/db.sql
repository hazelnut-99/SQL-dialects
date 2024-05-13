DROP TABLE IF EXISTS replacing_merge_tree;
CREATE TABLE replacing_merge_tree (key UInt32, date Datetime) ENGINE=ReplacingMergeTree() PARTITION BY date ORDER BY key;
INSERT INTO replacing_merge_tree VALUES (1, '2020-01-01'), (2, '2020-01-02'), (1, '2020-01-01'), (2, '2020-01-02');
DROP TABLE replacing_merge_tree;
