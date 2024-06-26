DROP TABLE IF EXISTS binary_op_mono1;
DROP TABLE IF EXISTS binary_op_mono2;
DROP TABLE IF EXISTS binary_op_mono3;
DROP TABLE IF EXISTS binary_op_mono4;
DROP TABLE IF EXISTS binary_op_mono5;
DROP TABLE IF EXISTS binary_op_mono6;
DROP TABLE IF EXISTS binary_op_mono7;
DROP TABLE IF EXISTS binary_op_mono8;
CREATE TABLE binary_op_mono1(i int, j int) ENGINE MergeTree PARTITION BY toDate(i / 1000) ORDER BY j;
CREATE TABLE binary_op_mono3(i int, j int) ENGINE MergeTree PARTITION BY i + 1000 ORDER BY j;
CREATE TABLE binary_op_mono4(i int, j int) ENGINE MergeTree PARTITION BY 1000 + i ORDER BY j;
CREATE TABLE binary_op_mono5(i int, j int) ENGINE MergeTree PARTITION BY i - 1000 ORDER BY j;
CREATE TABLE binary_op_mono6(i int, j int) ENGINE MergeTree PARTITION BY 1000 - i ORDER BY j;
INSERT INTO binary_op_mono1 VALUES (toUnixTimestamp('2020-09-01 00:00:00') * 1000, 1), (toUnixTimestamp('2020-09-01 00:00:00') * 1000, 2);
INSERT INTO binary_op_mono3 VALUES (1, 1), (10000, 2);
INSERT INTO binary_op_mono4 VALUES (1, 1), (10000, 2);
INSERT INTO binary_op_mono5 VALUES (1, 1), (10000, 2);
INSERT INTO binary_op_mono6 VALUES (1, 1), (10000, 2);
