CREATE TABLE test2 AS SELECT i a, i::VARCHAR b, CONCAT(i, ' - ', i) c FROM repeat(1, 1000) tbl(i);
CREATE TABLE test (a INTEGER, b INTEGER);
INSERT INTO test VALUES (11, 22), (12, 21), (13, 22);
create table integers as select i from range(200) tbl(i);
CREATE or replace TABLE t1 as select range a, [1, a, 2] b, a::VARCHAR || 'ducktastic' c, get_current_time() c from range(1000);
