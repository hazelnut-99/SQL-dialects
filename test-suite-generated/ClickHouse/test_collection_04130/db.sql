DROP TABLE IF EXISTS array_jaccard_index;
CREATE TABLE array_jaccard_index (arr Array(UInt8)) engine = MergeTree ORDER BY arr;
INSERT INTO array_jaccard_index values ([1,2,3]);
INSERT INTO array_jaccard_index values ([1,2]);
INSERT INTO array_jaccard_index values ([1]);
