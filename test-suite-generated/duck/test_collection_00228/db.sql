CREATE TABLE test1 (i INT, s1 VARCHAR, s2 VARCHAR);
INSERT INTO test1 VALUES (1, 'thisisareallylongstring', 'thisisareallylongstringtoo');
CREATE TABLE test2 (i INT, s1 VARCHAR, s2 VARCHAR);
INSERT INTO test2 VALUES (1, 'longstringsarecool', 'coolerthanshortstrings');
WITH lhs(i, j, k) AS (VALUES
	(100, 10, 1),
	(200, 20, 2)
),
rhs(p, q, r) AS (VALUES
	(100, 10, 1),
	(200, 20, 2)
)
SELECT lhs.*, rhs.*
FROM lhs, rhs
WHERE i <= p AND j <> q AND k IS DISTINCT FROM r;
WITH lhs(i, j, k) AS (VALUES
	(100, 10, 1),
	(200, 20, 2)
),
rhs(p, q, r) AS (VALUES
	(100, 10, 1),
	(200, 20, 2)
)
SELECT lhs.*, rhs.*
FROM lhs, rhs
WHERE i <= p AND k >= r AND j <= q
ORDER BY i;
CREATE TABLE wide AS (
	SELECT
		i,
		10 * (i + 0) AS c0,
		10 * (i + 1) AS c1,
		10 * (i + 2) AS c2,
		10 * (i + 3) AS c3,
		10 * (i + 4) AS c4,
		10 * (i + 5) AS c5,
		10 * (i + 6) AS c6,
		10 * (i + 7) AS c7,
		10 * (i + 8) AS c8,
		10 * (i + 9) AS c9
	FROM range(1, 10) tbl(i)
);
CREATE TABLE limits AS (
	SELECT 100 + (i * 17 % 100) AS z
	FROM range(1, 10) tbl(i)
);
CREATE TABLE wide_nulls AS (
	SELECT i, c0, c1, c2,
		CASE WHEN i % 7 = 0 THEN NULL ELSE c3 END AS c3,
		c4, c5, c6, c7,
		CASE WHEN i % 5 = 0 THEN NULL ELSE c8 END AS c8,
		c9
	FROM wide
);
CREATE TABLE limits_nulls AS (
	SELECT CASE WHEN z % 9 = 0 THEN NULL ELSE z END AS z
	FROM limits
);
EXPLAIN
SELECT lhs.i, rhs.i
FROM wide_nulls lhs, wide_nulls rhs
WHERE lhs.c3 < rhs.c0
  AND lhs.c8 IS DISTINCT FROM rhs.c3
ORDER BY 1, 2;
CREATE TABLE many_bounds AS (
	SELECT * FROM (VALUES (2000, 4000)) tbl(lo, hi)
);
CREATE TABLE many_values AS (
	SELECT * from range(10 * 1024) tbl(val)
);
CREATE TABLE integers(i INTEGER);
INSERT INTO integers VALUES (1), (2), (3), (NULL);
CREATE TABLE groups(i INTEGER, j INTEGER);
INSERT INTO groups VALUES (1, 1), (2, 1), (3, 2), (NULL, 2);
INSERT INTO integers VALUES (1), (2), (3), (5), (NULL);
CREATE VIEW intlists AS SELECT * FROM (VALUES
	(1, [1]),
	(2, [NULL]),
	(3, []),
	(4, [2, 3]),
	(5, [9,10,11]),
	(NULL::INTEGER, [13])
	) lv(pk, p);
CREATE VIEW strlists AS SELECT * FROM (VALUES
	(1, ['a']),
	(2, [NULL]),
	(3, []),
	(4, ['Branta Canadensis', 'c']),
	(5, ['i','j','k']),
	(NULL::INTEGER, ['Somateria mollissima'])
	) lv(pk, p);
CREATE VIEW structs AS SELECT * FROM (VALUES
	(1, {'x': 1, 'y': 'a'}),
	(2, {'x': NULL, 'y': NULL}),
	(3, {'x': 0, 'y': ''}),
	(4, {'x': 2, 'y': 'c'}),
	(5, {'x': 9, 'y': 'i'}),
	(NULL::INTEGER, {'x': 13, 'y': 'Somateria mollissima'})
	) sv(pk, p);
CREATE VIEW struct_lint_lstr AS SELECT * FROM (VALUES
	(1, {'x': [1], 'y': ['a']}),
	(2, {'x': [NULL], 'y': [NULL]}),
	(3, {'x': [], 'y': []}),
	(4, {'x': [2, 3], 'y': ['Branta Canadensis', 'c']}),
	(5, {'x': [9,10,11], 'y': ['i','j','k']}),
	(NULL::INTEGER, {'x': [13], 'y': ['Somateria mollissima']})
	) lv(pk, p);
CREATE VIEW r2l3r4l5i4i2l3v AS SELECT * FROM (VALUES
	(1, {'x': [{'l4': [51], 'i4': 41}], 'y': ['a']}),
	(2, {'x': [NULL], 'y': [NULL]}),
	(3, {'x': [], 'y': []}),
	(4, {'x': [{'l4': [52, 53], 'i4': 42}, {'l4': [54, 55], 'i4': 43}], 'y': ['Branta Canadensis', 'c']}),
	(5, {'x': [{'l4': [56], 'i4': 44}, {'l4': [57, 58], 'i4': 45}, {'l4': [59, 60, 61], 'i4': 46}], 'y': ['i','j','k']}),
	(NULL::INTEGER, {'x': [{'l4': [62], 'i4': 47}], 'y': ['Somateria mollissima']})
	) lv(pk, p);
CREATE VIEW longlists AS
SELECT *
FROM ((VALUES
	(1, [1]),
	(2, [NULL]),
	(3, []),
	(4, [2, 3]),
	(NULL::INTEGER, [13])
	)
UNION ALL
	select 5 as pk, list(i) as p from range(2000) tbl(i)
) lv(pk, p);
CREATE TABLE all_types("varchar" VARCHAR, nested_int_array INTEGER[][]);
;
INSERT INTO all_types VALUES('b',[[], NULL, [], [NULL]]);
CREATE TABLE nested(nested_int_array INTEGER[][]);
INSERT INTO nested VALUES([[42, 999]]);
CREATE VIEW list_int AS
SELECT i, i%2 as i2, [i, i + 1, i + 2] as l3
FROM range(10) tbl(i);
create table tbl_1 (a tinyint, b tinyint);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b tinyint);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a smallint, b smallint);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b smallint);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a integer, b integer);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b integer);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a bigint, b bigint);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b bigint);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a hugeint, b hugeint);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b hugeint);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a utinyint, b utinyint);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b utinyint);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a usmallint, b usmallint);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b usmallint);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a uinteger, b uinteger);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b uinteger);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a ubigint, b ubigint);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b ubigint);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a uhugeint, b uhugeint);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b uhugeint);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a float, b float);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b float);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a double, b double);
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b double);
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a decimal(4,1), b decimal(4,1));
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b decimal(4,1));
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
DROP TABLE tbl_1;
DROP TABLE tbl_2;
create table tbl_1 (a decimal(8,1), b decimal(8,1));
insert into tbl_1 values (1,NULL),(2,3),(NULL,NULL);
create table tbl_2 (b decimal(8,1));
insert into tbl_2 values (1),(2),(NULL);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS NOT DISTINCT FROM tbl_2.b);
explain select a,tbl_2.b from tbl_1 inner join tbl_2 on (a IS DISTINCT FROM tbl_2.b);
