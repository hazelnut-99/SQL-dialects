DROP TABLE IF EXISTS optimize_sorting;
CREATE TABLE optimize_sorting (a UInt64, b UInt64) ENGINE MergeTree() ORDER BY tuple();
INSERT INTO optimize_sorting VALUES(0, 0);
INSERT INTO optimize_sorting VALUES(0xFFFFffffFFFFffff, 0xFFFFffffFFFFffff);
DROP TABLE IF EXISTS optimize_sorting;
CREATE TABLE optimize_sorting (a UInt64, b UInt64, c UInt64) ENGINE MergeTree() ORDER BY (a, b);
INSERT INTO optimize_sorting SELECT number, number%5, number%2 from numbers(0, 5);
INSERT INTO optimize_sorting SELECT number, number%5, number%2 from numbers(5, 5);
