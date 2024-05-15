DROP TABLE IF EXISTS optimize_sorting;
CREATE TABLE optimize_sorting (a UInt64, b UInt64) ENGINE MergeTree() ORDER BY tuple();
INSERT INTO optimize_sorting VALUES(0, 0);
INSERT INTO optimize_sorting VALUES(0xFFFFffffFFFFffff, 0xFFFFffffFFFFffff);
