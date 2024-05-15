DROP TABLE IF EXISTS merge_tree;
CREATE TABLE merge_tree (x UInt8) ENGINE = MergeTree ORDER BY x;
INSERT INTO merge_tree SELECT 0 FROM numbers(1000000);
