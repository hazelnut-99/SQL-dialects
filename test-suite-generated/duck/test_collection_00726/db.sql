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
CREATE TABLE b(i row(t int));
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a tinyint, b tinyint);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a smallint, b smallint);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a integer, b integer);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a bigint, b bigint);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a hugeint, b hugeint);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a utinyint, b utinyint);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a usmallint, b usmallint);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a uinteger, b uinteger);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a ubigint, b ubigint);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a uhugeint, b uhugeint);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a float, b float);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a double, b double);
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a DECIMAL(4,0), b DECIMAL(4,0));
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a DECIMAL(9,0), b DECIMAL(9,0));
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a DECIMAL(18,0), b DECIMAL(18,0));
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
DROP TABLE IF EXISTS exprtest;
CREATE TABLE exprtest (a DECIMAL(38,0), b DECIMAL(38,0));
INSERT INTO exprtest VALUES (42, 10), (43, 100), (NULL, 1), (45, 0);
CREATE TABLE strings(n VARCHAR, s VARCHAR);
INSERT INTO strings (s) VALUES ('thisisalongstring'), ('thisisalsoalongstring'), ('hello'), ('world'), ('duckduckduckduckduck'), (NULL);
CREATE TABLE multistrings AS SELECT * FROM
	(
		VALUES
			(NULL, NULL, NULL, NULL, NULL, NULL),
			('thisisalongstring', NULL, NULL, NULL, NULL, NULL),
			(NULL, 'thisisalsoalongstring', NULL, NULL, NULL, NULL),
			(NULL, NULL, 'hello', NULL, NULL, NULL),
			(NULL, NULL, NULL, 'world', NULL, NULL),
			(NULL, NULL, NULL, NULL, 'duckduckduckduckduck', NULL),
			(NULL, NULL, NULL, NULL, NULL, NULL)
	) tbl(s1, s2, s3, s4, s5);
CREATE TABLE multilists AS SELECT * FROM
	(
		VALUES
			(NULL, NULL, NULL, NULL, NULL, NULL),
			([1, 2, 3], NULL, NULL, NULL, NULL, NULL),
			(NULL, [4, 5, 6, 7, 8, 9], NULL, NULL, NULL, NULL),
			(NULL, NULL, [], NULL, NULL, NULL),
			(NULL, NULL, NULL, [10, 11, NULL, 13, 14, 15, 16], NULL, NULL),
			(NULL, NULL, NULL, NULL, [NULL, 18, NULL, 20], NULL),
			(NULL, NULL, NULL, NULL, NULL, NULL)
	) tbl(s1, s2, s3, s4, s5);
CREATE TABLE nestedtypes AS SELECT * FROM
	(
		VALUES
			(NULL, NULL, NULL, NULL, NULL, NULL),
			([NULL, [NULL, NULL]]::STRUCT(x INTEGER[])[][], NULL, NULL, NULL, NULL, NULL),
			(NULL, [[{'x': [3, 4]}], [{'x': [17]}, {'x': [22, NULL]}]], NULL, NULL, NULL, NULL),
			(NULL, NULL, [[], [], []]::STRUCT(x INTEGER[])[][], NULL, NULL, NULL),
			(NULL, NULL, NULL, [[{'x': NULL}], NULL, [NULL, NULL], []]::STRUCT(x INTEGER[])[][], NULL, NULL),
			(NULL, NULL, NULL, NULL, [[{'x': [10, 12, 13, 14, 15]}], [{'x': [NULL]}, NULL]], NULL),
			(NULL, NULL, NULL, NULL, NULL, NULL)
	) tbl(s1, s2, s3, s4, s5);
INSERT INTO test VALUES (11, 22), (12, 21), (13, 22);
create table r4 (i int, j int);
insert into r4 (i, j) values (1,1), (1,2), (1,3), (1,4), (1,5);
create table tbl as select case when i%2=0 then null else i end as i from range(10) tbl(i);
