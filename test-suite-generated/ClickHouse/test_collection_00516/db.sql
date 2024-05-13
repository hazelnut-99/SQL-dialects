DROP TABLE IF EXISTS unsorted;
DROP TABLE IF EXISTS unsorted_replacing;
CREATE TABLE unsorted_replacing (x UInt32, s String, v UInt32) ENGINE ReplacingMergeTree(v) ORDER BY tuple();
INSERT INTO unsorted_replacing VALUES (1, 'a', 5), (5, 'b', 4);
INSERT INTO unsorted_replacing VALUES (2, 'c', 3), (4, 'd', 2);
INSERT INTO unsorted_replacing VALUES (3, 'e', 1);
