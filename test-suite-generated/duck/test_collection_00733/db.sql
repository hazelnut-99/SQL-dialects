CREATE TABLE v0 ( c1 INT );
;
INSERT INTO v0 VALUES (1), (2), (3), (4), (0);
Select * from v0 order by all;
CREATE TABLE table1 (a INTEGER DEFAULT -1, b INTEGER DEFAULT -2, c INTEGER DEFAULT -3);
insert into table1(a) select * from range (0, 4000, 1) t1(a);
UPDATE table1
SET a=-10
WHERE a = 1 RETURNING a, b, c;
UPDATE table1
SET a=a*-2, b=b*2, c=c*2
WHERE a = 2 RETURNING a, b, c;
UPDATE table1
SET a=a*-2, b=b*2, c=c*2
WHERE a = 3 RETURNING a;
UPDATE table1
SET a=a*-2, b=b*2, c=c*2
WHERE a = 4 RETURNING *;
UPDATE table1
SET a=-5, b=2, c=1
WHERE a=5 AND b=-2 AND c=-3 RETURNING *, c, b, a;
UPDATE table1
SET c=1, b=2, a=3
WHERE a=6 AND b=-2 AND c=-3 RETURNING c, b, a;
UPDATE table1
SET c=1, b=2, a=3
WHERE a=7 AND b=-2 AND c=-3 RETURNING c as aliasc, a as aliasa, b as aliasb;
UPDATE table1
SET c=15
WHERE a=8 RETURNING *;
UPDATE table1
SET a=-9, b=b+7
WHERE a=9
RETURNING a + b + c;
UPDATE table1
SET a=-10
WHERE a=10
RETURNING 'duckdb';
CREATE TABLE table2 (a2 INTEGER, b2 INTEGER, c2 INTEGER);
CREATE TABLE table3 (a3 INTEGER, b3 INTEGER, c3 INTEGER);
INSERT INTO table2 VALUES (1, 1, 1), (2, 2, 2), (3, 3, 3), (100, 100, 100), (200, 200, 200);
INSERT INTO table3 VALUES (1, 4, 4), (2, 6, 7), (8, 8, 8);
UPDATE table3
SET c3 = t2.c2
FROM table2 AS t2
RETURNING *;
