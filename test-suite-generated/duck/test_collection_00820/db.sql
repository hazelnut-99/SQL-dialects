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
(SELECT x FROM t1 UNION ALL SELECT x FROM t1) UNION ALL BY NAME SELECT 5 ORDER BY t1.x;
(SELECT x FROM t1 UNION ALL SELECT y FROM t1) UNION ALL BY NAME SELECT 5 ORDER BY y;
(SELECT x FROM t1 UNION ALL SELECT y FROM t1) UNION ALL BY NAME (SELECT z FROM t2 UNION ALL SELECT y FROM t2) ORDER BY y, z;
(SELECT x FROM t1 UNION ALL SELECT y FROM t1) UNION ALL BY NAME (SELECT z FROM t2 UNION ALL SELECT y FROM t2) ORDER BY t1.y;
(SELECT x FROM t1 ORDER BY y) UNION ALL BY NAME (SELECT y FROM t2 ORDER BY z) ORDER BY x DESC;
(SELECT x, y FROM t1 UNION ALL BY NAME SELECT y, z FROM t2) EXCEPT SELECT NULL, 2, 2 FROM t1;
CREATE TABLE new_table AS (SELECT x, y FROM t1 UNION ALL BY NAME SELECT y, z FROM t2);
CREATE TABLE test AS SELECT * FROM range(0, 1024, 1) t1(a);
CREATE TABLE test2 AS SELECT * FROM range(0, 1024, 1) t1(b);
(SELECT * FROM test, test2 WHERE a=b) UNION (SELECT * FROM test,test2 WHERE a=b) ORDER BY 1;
WITH test_cte AS ((SELECT * FROM test, test2 WHERE a=b) UNION (SELECT * FROM test,test2 WHERE a=b)) SELECT SUM(ta.a) FROM test_cte ta, test_cte tb WHERE ta.a=tb.a;
WITH test_cte AS ((SELECT * FROM test, test2 WHERE a=b) UNION (SELECT * FROM test,test2 WHERE a=b)), results AS (SELECT SUM(ta.a) AS sum_a FROM test_cte ta, test_cte tb WHERE ta.a=tb.a) SELECT * FROM (SELECT * FROM results GROUP BY sum_a UNION SELECT * FROM results GROUP BY sum_a UNION SELECT * FROM results GROUP BY sum_a UNION SELECT * FROM results GROUP BY sum_a) AS t;
INSERT INTO t1 VALUES (3, 3), (3, 3), (1, 1);
INSERT INTO t2 VALUES (2, 2), (4, 4);
(SELECT x FROM t1 UNION ALL SELECT x FROM t1) UNION BY NAME SELECT 5 ORDER BY t1.x;
(SELECT x FROM t1 UNION ALL SELECT y FROM t1) UNION BY NAME SELECT 5 ORDER BY y;
(SELECT x FROM t1 UNION ALL SELECT y FROM t1) UNION BY NAME (SELECT z FROM t2 UNION ALL SELECT y FROM t2) ORDER BY y, z;
(SELECT 1 UNION BY NAME SELECT x, y FROM t1) UNION BY NAME SELECT y, z FROM t2 ORDER BY ALL;
(SELECT x, y FROM t1 UNION BY NAME SELECT y, z FROM t2 ORDER BY #1) EXCEPT SELECT NULL, 2, 2 FROM t1 ORDER BY #1;
CREATE TABLE integers(i INTEGER);
INSERT INTO integers VALUES (1), (2);
CREATE TABLE integers2(i INTEGER);
INSERT INTO integers2 VALUES (2), (3);
CREATE VIEW v1 AS SELECT * FROM integers UNION ALL SELECT * FROM integers;
CREATE VIEW v2 AS SELECT * FROM integers2 UNION ALL SELECT * FROM integers2;
CREATE VIEW v3 AS SELECT (SELECT integers2.i-1) i FROM integers2 UNION ALL SELECT (SELECT integers2.i-1) i FROM integers2;
CREATE VIEW v4 AS SELECT (SELECT integers.i+1) i FROM integers UNION ALL SELECT (SELECT integers.i+1) i FROM integers;
create table c (i integer);
insert into c values(44);
create table t (i int);
insert into t values (1),(2),(3),(4),(4);
CREATE TABLE FLOAT8_TBL(f1 float8);
INSERT INTO FLOAT8_TBL(f1) VALUES
  ('0.0'),
  ('-34.84'),
  ('-1004.30'),
  ('-1.2345678901234e+200'),
  ('-1.2345678901234e-200');
CREATE TABLE INT4_TBL(f1 int4);
INSERT INTO INT4_TBL(f1) VALUES
  ('   0  '),
  ('123456     '),
  ('    -123456'),
  ('2147483647'),  -- largest and smallest values
  ('-2147483647');
CREATE TABLE INT8_TBL(q1 int8, q2 int8);
INSERT INTO INT8_TBL VALUES
  ('  123   ','  456'),
  ('123   ','4567890123456789'),
  ('4567890123456789','123'),
  (+4567890123456789,'4567890123456789'),
  ('+4567890123456789','-4567890123456789');
CREATE TABLE CHAR_TBL(f1 char(4));
INSERT INTO CHAR_TBL (f1) VALUES
  ('a'),
  ('ab'),
  ('abcd'),
  ('abcd    ');
CREATE TABLE VARCHAR_TBL(f1 varchar(4));
INSERT INTO VARCHAR_TBL (f1) VALUES
  ('a'),
  ('ab'),
  ('abcd'),
  ('abcd    ');
(SELECT 1,2,3 UNION SELECT 4,5,6) INTERSECT SELECT 4,5,6;
(SELECT 1,2,3 UNION SELECT 4,5,6 ORDER BY 1,2) INTERSECT SELECT 4,5,6;
(SELECT 1,2,3 UNION SELECT 4,5,6) EXCEPT SELECT 4,5,6;
(SELECT 1,2,3 UNION SELECT 4,5,6 ORDER BY 1,2) EXCEPT SELECT 4,5,6;
(((SELECT q1 FROM int8_tbl INTERSECT SELECT q2 FROM int8_tbl ORDER BY 1))) UNION ALL SELECT q2 FROM int8_tbl;
(((SELECT q1 FROM int8_tbl UNION ALL SELECT q2 FROM int8_tbl))) EXCEPT SELECT q1 FROM int8_tbl ORDER BY 1;
(((((select * from int8_tbl)))));
CREATE TABLE tbl AS SELECT * FROM range(10000) tbl(i) UNION ALL SELECT NULL;
INSERT INTO t VALUES (42);
INSERT INTO test VALUES (1), (2), (3), (NULL);
INSERT INTO test2 VALUES (2), (3), (4), (NULL);
(SELECT a FROM test ORDER BY a+1) UNION SELECT b FROM test2 ORDER BY 1;
(SELECT a FROM test ORDER BY a+1) UNION SELECT b FROM test2 ORDER BY 1;
