CREATE TABLE test2 AS SELECT i a, i::VARCHAR b, CONCAT(i, ' - ', i) c FROM repeat(1, 1000) tbl(i);
