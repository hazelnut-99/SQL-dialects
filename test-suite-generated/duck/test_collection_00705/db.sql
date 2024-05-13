CREATE TABLE integers(i INTEGER, j INTEGER, k INTEGER);
INSERT INTO integers VALUES (1, 2, 3);
CREATE TABLE exprtest (a INTEGER, b INTEGER);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, -1);
CREATE TABLE intest (a INTEGER, b INTEGER, c INTEGER);
INSERT INTO intest VALUES (42, 42, 42), (43, 42, 42), (44, 41, 44);
CREATE TABLE strtest (a INTEGER, b VARCHAR);
INSERT INTO strtest VALUES (1, 'a'), (2, 'h'), (3, 'd');
INSERT INTO strtest VALUES (4, NULL);
CREATE TABLE a (i integer, j integer);
INSERT INTO a VALUES (42, 84);
CREATE TABLE test (a INTEGER, b INTEGER);
INSERT INTO test VALUES (11, 22), (12, 21), (13, 22);
INSERT INTO integers VALUES (1, 2, 3);
CREATE TABLE vals AS SELECT * FROM (
	VALUES (1, 'hello'), (NULL, '2'), (3, NULL)
) tbl(a, b);
