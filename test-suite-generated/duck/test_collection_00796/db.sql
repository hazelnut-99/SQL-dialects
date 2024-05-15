CREATE TABLE a AS SELECT i, i+1 AS j, i+2 AS k, i+3 AS l FROM range(42,43) t(i);
CREATE TABLE b AS SELECT i, i+1 AS j, i+2 AS k, i+3 AS l FROM range(40,41) t(i);
CREATE VIEW vals AS SELECT * FROM (VALUES (1, 10), (2, 5), (3, 4)) tbl(i, j);
CREATE VIEW vunion AS
SELECT * FROM vals
UNION ALL
SELECT * FROM vals;
CREATE TABLE t1 (x INT, y INT);
INSERT INTO t1 VALUES (3, 3), (1, 1);
CREATE TABLE t2 (y INT, z INT);
INSERT INTO t2 VALUES (2, 2), (4, 4);
