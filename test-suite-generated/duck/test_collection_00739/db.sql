CREATE TABLE test2 AS SELECT i a, i::VARCHAR b, CONCAT(i, ' - ', i) c FROM repeat(1, 1000) tbl(i);
CREATE TABLE test (a INTEGER, b INTEGER);
INSERT INTO test VALUES (11, 22), (12, 21), (13, 22);
create table integers as select i from range(200) tbl(i);
