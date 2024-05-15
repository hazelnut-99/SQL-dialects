CREATE TABLE test (a INTEGER, b INTEGER);
INSERT INTO test VALUES (11, 22), (12, 21), (13, 22);
CREATE TABLE test2 (a STRING);
INSERT INTO test2 VALUES ('Hello World');
PREPARE v1 AS SELECT * FROM test2 LIMIT 3;
EXECUTE v1;
CREATE TABLE integers(i INTEGER);
INSERT INTO integers VALUES (1), (2), (3), (4), (5);
CREATE SEQUENCE seq START 3;
CREATE SEQUENCE of_seq START 1;
CREATE OR REPLACE TABLE t AS SELECT range x FROM range(10);
create table t0(c0 int);
insert into t0 values (1), (2), (3), (4), (5), (6), (7);
drop table test;
create table test (i smallint);
insert into test values (100), (25), (75), (50);
drop table test;
create table test (i integer);
insert into test values (100), (25), (75), (50);
drop table test;
create table test (i bigint);
insert into test values (100), (25), (75), (50);
drop table test;
create table test (i hugeint);
insert into test values (100), (25), (75), (50);
drop table test;
create table test (i utinyint);
insert into test values (100), (25), (75), (50);
drop table test;
create table test (i usmallint);
insert into test values (100), (25), (75), (50);
drop table test;
create table test (i uinteger);
insert into test values (100), (25), (75), (50);
drop table test;
create table test (i ubigint);
insert into test values (100), (25), (75), (50);
drop table test;
create table test (i uhugeint);
insert into test values (100), (25), (75), (50);
drop table test;
create table test (i smallint);
insert into test values (10000), (2500), (7500), (5000);
drop table test;
create table test (i usmallint);
insert into test values (10000), (2500), (7500), (5000);
drop table test;
create table test (i integer);
insert into test values (10000), (2500), (7500), (5000);
drop table test;
create table test (i uinteger);
insert into test values (10000), (2500), (7500), (5000);
drop table test;
create table test (i bigint);
insert into test values (10000), (2500), (7500), (5000);
drop table test;
create table test (i ubigint);
insert into test values (10000), (2500), (7500), (5000);
drop table test;
create table test (i hugeint);
insert into test values (10000), (2500), (7500), (5000);
drop table test;
create table test (i uhugeint);
insert into test values (10000), (2500), (7500), (5000);
drop table test;
create table test (i integer);
insert into test values (1000000), (250000), (750000), (500000);
drop table test;
create table test (i uinteger);
insert into test values (1000000), (250000), (750000), (500000);
drop table test;
create table test (i bigint);
insert into test values (1000000), (250000), (750000), (500000);
drop table test;
create table test (i ubigint);
insert into test values (1000000), (250000), (750000), (500000);
drop table test;
create table test (i hugeint);
insert into test values (1000000), (250000), (750000), (500000);
drop table test;
create table test (i uhugeint);
insert into test values (1000000), (250000), (750000), (500000);
drop table test;
create table test (i bigint);
insert into test values (1000000000), (250000000), (750000000), (500000000);
drop table test;
create table test (i ubigint);
insert into test values (1000000000), (250000000), (750000000), (500000000);
drop table test;
create table test (i hugeint);
insert into test values (1000000000), (250000000), (750000000), (500000000);
drop table test;
create table test (i uhugeint);
insert into test values (1000000000), (250000000), (750000000), (500000000);
drop table test;
create table test (i hugeint);
insert into test values (295147905179352825856), (73786976294838206464), (147573952589676412928), (36893488147419103232);
drop table test;
CREATE TABLE integers2(k INTEGER, l INTEGER);
INSERT INTO integers2 VALUES (1, 10), (2, 20);
CREATE TABLE test (a INTEGER, b INTEGER);
INSERT INTO test VALUES (11, 22), (12, 21), (13, 22);
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as select i from integers order by i;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
create table sorted_integers as
with p1 as (
    select i from integers order by i
), p2 as (
    select i + 100000 from integers order by i
)
select * from p1 union all select * from p2;
drop table sorted_integers;
CREATE TABLE tbl_structs AS SELECT
	{'a': 2.0, 'b': 'hello', 'c': [1, 2]} AS s1,
	1::BIGINT AS i,
	{'k': 1::TINYINT, 'j': 0::BOOL} AS s2;
INSERT INTO tbl_structs VALUES (
	{'a': 1.0, 'b': 'yay', 'c': [10, 20]},
	42,
	{'k': 2, 'j': 1});
CREATE TABLE test0 (job VARCHAR, name VARCHAR);
INSERT INTO test0 VALUES ('Shipping and Receiving Supervisor', 'Ackerman'), ('Shipping and Receiving Clerk', 'Berndt'), ('Shipping and Receiving Clerk', 'Kuppa'), ('Production Supervisor - WC60', 'Brown'), ('Production Supervisor - WC60', 'Campbell'), ('Production Supervisor - WC40', 'Dsa');
CREATE TABLE test1 (s VARCHAR);
INSERT INTO test1 VALUES ('2'), (NULL), ('3555555555552'), ('1'), ('355555555556'), ('10'), ('3555555555553'), ('3555555555551');
CREATE TABLE test3 AS (SELECT CAST(range AS VARCHAR) r, random() rand FROM range(10000));
CREATE TABLE test3_1 AS (SELECT * FROM test3 ORDER BY rand);
CREATE TABLE test4 (i INT, j INT);
INSERT INTO test4 VALUES (3, 3), (2, 3), (2, 2), (3, 2);
CREATE TABLE tpch_q1_agg (l_returnflag VARCHAR, l_linestatus VARCHAR, sum_qty INT, sum_base_price DOUBLE, sum_disc_price DOUBLE, sum_charge DOUBLE, avg_qty DOUBLE, avg_price DOUBLE, avg_disc DOUBLE, count_order BIGINT);
INSERT INTO tpch_q1_agg VALUES ('N', 'O', 7459297, 10512270008.90, 9986238338.3847, 10385578376.585467, 25.545537671232875, 36000.9246880137, 0.05009595890410959, 292000), ('R', 'F', 3785523, 5337950526.47, 5071818532.9420, 5274405503.049367, 25.5259438574251, 35994.029214030925, 0.04998927856184382, 148301), ('A', 'F', 3774200, 5320753880.69, 5054096266.6828, 5256751331.449234, 25.537587116854997, 36002.12382901414, 0.05014459706340077, 147790), ('N', 'F', 95257, 133737795.84, 127132372.6512, 132286291.229445, 25.30066401062417, 35521.32691633466, 0.04939442231075697, 3765);
create table test5 (i int, s varchar);
insert into test5 values (3, 'ababa'), (1, 'babab'), (NULL, 'abbab'), (2, NULL);
CREATE TABLE test6 (i1 INT, s1 VARCHAR, i2 int, s2 VARCHAR);
INSERT INTO test6 VALUES
(6, '0reallylongstring1', 3, '1reallylongstring8'),
(6, '0reallylongstring1', 3, '1reallylongstring7'),
(6, '0reallylongstring1', 4, '1reallylongstring8'),
(6, '0reallylongstring1', 4, '1reallylongstring7'),
(6, '0reallylongstring2', 3, '1reallylongstring8'),
(6, '0reallylongstring2', 3, '1reallylongstring7'),
(6, '0reallylongstring2', 4, '1reallylongstring8'),
(6, '0reallylongstring2', 4, '1reallylongstring7'),
(5, '0reallylongstring1', 3, '1reallylongstring8'),
(5, '0reallylongstring1', 3, '1reallylongstring7'),
(5, '0reallylongstring1', 4, '1reallylongstring8'),
(5, '0reallylongstring1', 4, '1reallylongstring7'),
(5, '0reallylongstring2', 3, '1reallylongstring8'),
(5, '0reallylongstring2', 3, '1reallylongstring7'),
(5, '0reallylongstring2', 4, '1reallylongstring8'),
(5, '0reallylongstring2', 4, '1reallylongstring7');
create table test7 (p_brand VARCHAR, p_type VARCHAR, p_size INT, supplier_cnt BIGINT);
insert into test7 values ('Brand#11', 'ECONOMY BRUSHED COPPER', 3, 4), ('Brand#11', 'ECONOMY BRUSHED COPPER', 9, 4), ('Brand#11', 'ECONOMY BRUSHED STEEL', 36, 4), ('Brand#11', 'ECONOMY BRUSHED STEEL', 9, 4), ('Brand#11', 'ECONOMY BURNISHED BRASS', 36, 4), ('Brand#11', 'ECONOMY BURNISHED COPPER', 49, 4), ('Brand#11', 'ECONOMY BURNISHED COPPER', 9, 4), ('Brand#11', 'ECONOMY BURNISHED NICKEL', 14, 4), ('Brand#11', 'ECONOMY BURNISHED NICKEL', 49, 4);
create table test8 (i int, s varchar);
insert into test8 values (3, 'aba'), (1, 'ccbcc'), (NULL, 'dbdbd'), (2, NULL);
CREATE TABLE test9 AS (SELECT range % 4 i, range j FROM range(5000));
INSERT INTO test9 VALUES (0, NULL), (1, NULL), (2, NULL), (3, NULL);
CREATE TABLE DirectReports
(
    EmployeeID smallint,
    Name varchar NOT NULL,
    Title varchar NOT NULL,
    EmployeeLevel int NOT NULL,
    Sort varchar NOT NULL
);
INSERT INTO DirectReports VALUES
(1, 'Ken Sánchez', 'Chief Executive Officer', 1, 'Ken Sánchez'),
(273, '>Brian Welcker', 'Vice President of Sales', 2, 'Ken Sánchez>Brian Welcker'),
(274, '>>Stephen Jiang', 'North American Sales Manager', 3, 'Ken Sánchez>Brian Welcker>Stephen Jiang'),
(285, '>>Syed Abbas', 'Pacific Sales Manager', 3, 'Ken Sánchez>Brian Welcker>Syed Abbas'),
(16, '>>David Bradley', 'Marketing Manager', 3, 'Ken Sánchez>Brian Welcker>David Bradley'),
(275, '>>>Michael Blythe', 'Sales Representative', 4, 'Ken Sánchez>Brian Welcker>Stephen Jiang>Michael Blythe'),
(276, '>>>Linda Mitchell', 'Sales Representative', 4, 'Ken Sánchez>Brian Welcker>Stephen Jiang>Linda Mitchell'),
(286, '>>>Lynn Tsoflias', 'Sales Representative', 4, 'Ken Sánchez>Brian Welcker>Syed Abbas>Lynn Tsoflias'),
(23, '>>>Mary Gibson', 'Marketing Specialist', 4, 'Ken Sánchez>Brian Welcker>David Bradley>Mary Gibson');
DROP TABLE t0;
DROP TABLE test0;
DROP TABLE test1;
DROP TABLE test2;
DROP TABLE test3;
DROP TABLE test3_1;
DROP TABLE test4;
DROP TABLE tpch_q1_agg;
DROP table test5;
DROP TABLE test6;
DROP table test7;
DROP table test8;
DROP TABLE test9;
DROP TABLE DirectReports;
create table t0 (c0 varchar);
insert into t0 values ('a'), (NULL), (NULL), (NULL), (NULL), (NULL), (NULL);
CREATE TABLE test0 (job VARCHAR, name VARCHAR);
INSERT INTO test0 VALUES ('Shipping and Receiving Supervisor', 'Ackerman'), ('Shipping and Receiving Clerk', 'Berndt'), ('Shipping and Receiving Clerk', 'Kuppa'), ('Production Supervisor - WC60', 'Brown'), ('Production Supervisor - WC60', 'Campbell'), ('Production Supervisor - WC40', 'Dsa');
CREATE TABLE test1 (s VARCHAR);
INSERT INTO test1 VALUES ('2'), (NULL), ('3555555555552'), ('1'), ('355555555556'), ('10'), ('3555555555553'), ('3555555555551');
CREATE TABLE test2 AS (SELECT CAST(range AS VARCHAR) r, random() rand FROM range(10000));
CREATE TABLE test2_1 AS (SELECT * FROM test2 ORDER BY r);
CREATE TABLE test3 AS (SELECT CAST(range AS VARCHAR) r, random() rand FROM range(10000));
CREATE TABLE test3_1 AS (SELECT * FROM test3 ORDER BY rand);
CREATE TABLE test4 (i INT, j INT);
INSERT INTO test4 VALUES (3, 3), (2, 3), (2, 2), (3, 2);
CREATE TABLE tpch_q1_agg (l_returnflag VARCHAR, l_linestatus VARCHAR, sum_qty INT, sum_base_price DOUBLE, sum_disc_price DOUBLE, sum_charge DOUBLE, avg_qty DOUBLE, avg_price DOUBLE, avg_disc DOUBLE, count_order BIGINT);
INSERT INTO tpch_q1_agg VALUES ('N', 'O', 7459297, 10512270008.90, 9986238338.3847, 10385578376.585467, 25.545537671232875, 36000.9246880137, 0.05009595890410959, 292000), ('R', 'F', 3785523, 5337950526.47, 5071818532.9420, 5274405503.049367, 25.5259438574251, 35994.029214030925, 0.04998927856184382, 148301), ('A', 'F', 3774200, 5320753880.69, 5054096266.6828, 5256751331.449234, 25.537587116854997, 36002.12382901414, 0.05014459706340077, 147790), ('N', 'F', 95257, 133737795.84, 127132372.6512, 132286291.229445, 25.30066401062417, 35521.32691633466, 0.04939442231075697, 3765);
create table test5 (i int, s varchar);
insert into test5 values (3, 'ababa'), (1, 'babab'), (NULL, 'abbab'), (2, NULL);
CREATE TABLE test6 (i1 INT, s1 VARCHAR, i2 int, s2 VARCHAR);
INSERT INTO test6 VALUES
(6, '0reallylongstring1', 3, '1reallylongstring8'),
(6, '0reallylongstring1', 3, '1reallylongstring7'),
(6, '0reallylongstring1', 4, '1reallylongstring8'),
(6, '0reallylongstring1', 4, '1reallylongstring7'),
(6, '0reallylongstring2', 3, '1reallylongstring8'),
(6, '0reallylongstring2', 3, '1reallylongstring7'),
(6, '0reallylongstring2', 4, '1reallylongstring8'),
(6, '0reallylongstring2', 4, '1reallylongstring7'),
(5, '0reallylongstring1', 3, '1reallylongstring8'),
(5, '0reallylongstring1', 3, '1reallylongstring7'),
(5, '0reallylongstring1', 4, '1reallylongstring8'),
(5, '0reallylongstring1', 4, '1reallylongstring7'),
(5, '0reallylongstring2', 3, '1reallylongstring8'),
(5, '0reallylongstring2', 3, '1reallylongstring7'),
(5, '0reallylongstring2', 4, '1reallylongstring8'),
(5, '0reallylongstring2', 4, '1reallylongstring7');
create table test7 (p_brand VARCHAR, p_type VARCHAR, p_size INT, supplier_cnt BIGINT);
insert into test7 values ('Brand#11', 'ECONOMY BRUSHED COPPER', 3, 4), ('Brand#11', 'ECONOMY BRUSHED COPPER', 9, 4), ('Brand#11', 'ECONOMY BRUSHED STEEL', 36, 4), ('Brand#11', 'ECONOMY BRUSHED STEEL', 9, 4), ('Brand#11', 'ECONOMY BURNISHED BRASS', 36, 4), ('Brand#11', 'ECONOMY BURNISHED COPPER', 49, 4), ('Brand#11', 'ECONOMY BURNISHED COPPER', 9, 4), ('Brand#11', 'ECONOMY BURNISHED NICKEL', 14, 4), ('Brand#11', 'ECONOMY BURNISHED NICKEL', 49, 4);
create table test8 (i int, s varchar);
insert into test8 values (3, 'aba'), (1, 'ccbcc'), (NULL, 'dbdbd'), (2, NULL);
CREATE TABLE test9 AS (SELECT range % 4 i, range j FROM range(5000));
INSERT INTO test9 VALUES (0, NULL), (1, NULL), (2, NULL), (3, NULL);
CREATE TABLE DirectReports
(
    EmployeeID smallint,
    Name varchar NOT NULL,
    Title varchar NOT NULL,
    EmployeeLevel int NOT NULL,
    Sort varchar NOT NULL
);
INSERT INTO DirectReports VALUES
(1, 'Ken Sánchez', 'Chief Executive Officer', 1, 'Ken Sánchez'),
(273, '>Brian Welcker', 'Vice President of Sales', 2, 'Ken Sánchez>Brian Welcker'),
(274, '>>Stephen Jiang', 'North American Sales Manager', 3, 'Ken Sánchez>Brian Welcker>Stephen Jiang'),
(285, '>>Syed Abbas', 'Pacific Sales Manager', 3, 'Ken Sánchez>Brian Welcker>Syed Abbas'),
(16, '>>David Bradley', 'Marketing Manager', 3, 'Ken Sánchez>Brian Welcker>David Bradley'),
(275, '>>>Michael Blythe', 'Sales Representative', 4, 'Ken Sánchez>Brian Welcker>Stephen Jiang>Michael Blythe'),
(276, '>>>Linda Mitchell', 'Sales Representative', 4, 'Ken Sánchez>Brian Welcker>Stephen Jiang>Linda Mitchell'),
(286, '>>>Lynn Tsoflias', 'Sales Representative', 4, 'Ken Sánchez>Brian Welcker>Syed Abbas>Lynn Tsoflias'),
(23, '>>>Mary Gibson', 'Marketing Specialist', 4, 'Ken Sánchez>Brian Welcker>David Bradley>Mary Gibson');
DROP TABLE t0;
DROP TABLE test0;
DROP TABLE test1;
DROP TABLE test2;
DROP TABLE test2_1;
DROP TABLE test3;
DROP TABLE test3_1;
DROP TABLE test4;
DROP TABLE tpch_q1_agg;
DROP table test5;
DROP TABLE test6;
DROP table test7;
DROP table test8;
DROP TABLE test9;
DROP TABLE DirectReports;
CREATE TABLE test0 (i tinyint[]);
INSERT INTO test0 VALUES ([2]), ([1]), ([1, 2]), ([]), ([2, 2]), ([NULL]), ([2, 3]);
INSERT INTO test0 VALUES (NULL);
CREATE TABLE test2 (i tinyint[][]);
INSERT INTO test2 VALUES ([[2]]), ([[1]]), ([NULL, []]), ([[1], [2]]), ([]), ([[]]), ([[2], [2]]), ([NULL]), (NULL), ([[2], [3]]);
CREATE TABLE test3 (i tinyint[][]);
INSERT INTO test3 VALUES ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], []]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 1]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 2]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], NULL]);
CREATE TABLE test4 (i tinyint[][]);
INSERT INTO test4 VALUES ([[NULL, NULL, 0], [1, NULL, 1]]), ([[NULL, NULL, 1]]), ([[NULL, NULL, 0], [1, NULL, 0]]), ([[0, NULL, NULL, 1]]), ([[0, NULL, NULL, 0]]);
CREATE TABLE test10 (s STRUCT(i tinyint, j tinyint));
INSERT INTO test10 values
({'i': 2, 'j': NULL}),
({'i': 1, 'j': NULL}),
({'i': 2, 'j': 3}),
({'i': 1, 'j': 2}),
({'i': 2, 'j': 2}),
({'i': NULL, 'j': NULL}),
(NULL),
({'i': 2, 'j': 3});
CREATE TABLE test11 (s STRUCT(s1 STRUCT(i tinyint, j tinyint)));
INSERT INTO test11 VALUES ({'s1': NULL}), (NULL), ({'s1': {'i': NULL, 'j': 1}}), ({'s1': {'i': 0, 'j': NULL}}), ({'s1': {'i': NULL, 'j': NULL}}), ({'s1': {'i': 0, 'j': 1}});
CREATE TABLE test13 (s STRUCT(a tinyint, b tinyint, c tinyint, d tinyint, e tinyint, f tinyint, g tinyint, h tinyint, i tinyint, j tinyint));
INSERT INTO test13 VALUES
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 9});
CREATE TABLE test20 (l STRUCT(i tinyint)[]);
INSERT INTO test20 VALUES
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': NULL}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': NULL}]);
CREATE TABLE test22 (s STRUCT(i tinyint[], j tinyint[]));
INSERT INTO test22 VALUES
({'i': [0, NULL], 'j': [NULL, 0]}),
({'i': [0, NULL], 'j': [NULL, 1]}),
({'i': [0, NULL], 'j': [1, 2]}),
({'i': [1, NULL], 'j': [2, NULL]}),
({'i': [0, 2], 'j': [2, NULL]}),
({'i': NULL, 'j': [2, NULL]}),
({'i': [0, 2], 'j': NULL}),
({'i': NULL, 'j': [2, 3]});
CREATE TABLE test24 (l STRUCT(l1 STRUCT(i tinyint)[])[]);
INSERT INTO test24 VALUES
([{'l1': [{'i': 0}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 2}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 1}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]);
DROP TABLE test0;
DROP TABLE test2;
DROP TABLE test3;
DROP TABLE test4;
DROP TABLE test10;
DROP TABLE test11;
DROP TABLE test13;
DROP TABLE test20;
DROP TABLE test22;
DROP TABLE test24;
CREATE TABLE test0 (i smallint[]);
INSERT INTO test0 VALUES ([2]), ([1]), ([1, 2]), ([]), ([2, 2]), ([NULL]), ([2, 3]);
INSERT INTO test0 VALUES (NULL);
CREATE TABLE test2 (i smallint[][]);
INSERT INTO test2 VALUES ([[2]]), ([[1]]), ([NULL, []]), ([[1], [2]]), ([]), ([[]]), ([[2], [2]]), ([NULL]), (NULL), ([[2], [3]]);
CREATE TABLE test3 (i smallint[][]);
INSERT INTO test3 VALUES ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], []]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 1]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 2]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], NULL]);
CREATE TABLE test4 (i smallint[][]);
INSERT INTO test4 VALUES ([[NULL, NULL, 0], [1, NULL, 1]]), ([[NULL, NULL, 1]]), ([[NULL, NULL, 0], [1, NULL, 0]]), ([[0, NULL, NULL, 1]]), ([[0, NULL, NULL, 0]]);
CREATE TABLE test10 (s STRUCT(i smallint, j smallint));
INSERT INTO test10 values
({'i': 2, 'j': NULL}),
({'i': 1, 'j': NULL}),
({'i': 2, 'j': 3}),
({'i': 1, 'j': 2}),
({'i': 2, 'j': 2}),
({'i': NULL, 'j': NULL}),
(NULL),
({'i': 2, 'j': 3});
CREATE TABLE test11 (s STRUCT(s1 STRUCT(i smallint, j smallint)));
INSERT INTO test11 VALUES ({'s1': NULL}), (NULL), ({'s1': {'i': NULL, 'j': 1}}), ({'s1': {'i': 0, 'j': NULL}}), ({'s1': {'i': NULL, 'j': NULL}}), ({'s1': {'i': 0, 'j': 1}});
CREATE TABLE test13 (s STRUCT(a smallint, b smallint, c smallint, d smallint, e smallint, f smallint, g smallint, h smallint, i smallint, j smallint));
INSERT INTO test13 VALUES
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 9});
CREATE TABLE test20 (l STRUCT(i smallint)[]);
INSERT INTO test20 VALUES
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': NULL}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': NULL}]);
CREATE TABLE test22 (s STRUCT(i smallint[], j smallint[]));
INSERT INTO test22 VALUES
({'i': [0, NULL], 'j': [NULL, 0]}),
({'i': [0, NULL], 'j': [NULL, 1]}),
({'i': [0, NULL], 'j': [1, 2]}),
({'i': [1, NULL], 'j': [2, NULL]}),
({'i': [0, 2], 'j': [2, NULL]}),
({'i': NULL, 'j': [2, NULL]}),
({'i': [0, 2], 'j': NULL}),
({'i': NULL, 'j': [2, 3]});
CREATE TABLE test24 (l STRUCT(l1 STRUCT(i smallint)[])[]);
INSERT INTO test24 VALUES
([{'l1': [{'i': 0}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 2}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 1}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]);
DROP TABLE test0;
DROP TABLE test2;
DROP TABLE test3;
DROP TABLE test4;
DROP TABLE test10;
DROP TABLE test11;
DROP TABLE test13;
DROP TABLE test20;
DROP TABLE test22;
DROP TABLE test24;
CREATE TABLE test0 (i integer[]);
INSERT INTO test0 VALUES ([2]), ([1]), ([1, 2]), ([]), ([2, 2]), ([NULL]), ([2, 3]);
INSERT INTO test0 VALUES (NULL);
CREATE TABLE test2 (i integer[][]);
INSERT INTO test2 VALUES ([[2]]), ([[1]]), ([NULL, []]), ([[1], [2]]), ([]), ([[]]), ([[2], [2]]), ([NULL]), (NULL), ([[2], [3]]);
CREATE TABLE test3 (i integer[][]);
INSERT INTO test3 VALUES ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], []]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 1]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 2]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], NULL]);
CREATE TABLE test4 (i integer[][]);
INSERT INTO test4 VALUES ([[NULL, NULL, 0], [1, NULL, 1]]), ([[NULL, NULL, 1]]), ([[NULL, NULL, 0], [1, NULL, 0]]), ([[0, NULL, NULL, 1]]), ([[0, NULL, NULL, 0]]);
CREATE TABLE test10 (s STRUCT(i integer, j integer));
INSERT INTO test10 values
({'i': 2, 'j': NULL}),
({'i': 1, 'j': NULL}),
({'i': 2, 'j': 3}),
({'i': 1, 'j': 2}),
({'i': 2, 'j': 2}),
({'i': NULL, 'j': NULL}),
(NULL),
({'i': 2, 'j': 3});
CREATE TABLE test11 (s STRUCT(s1 STRUCT(i integer, j integer)));
INSERT INTO test11 VALUES ({'s1': NULL}), (NULL), ({'s1': {'i': NULL, 'j': 1}}), ({'s1': {'i': 0, 'j': NULL}}), ({'s1': {'i': NULL, 'j': NULL}}), ({'s1': {'i': 0, 'j': 1}});
CREATE TABLE test13 (s STRUCT(a integer, b integer, c integer, d integer, e integer, f integer, g integer, h integer, i integer, j integer));
INSERT INTO test13 VALUES
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 9});
CREATE TABLE test20 (l STRUCT(i integer)[]);
INSERT INTO test20 VALUES
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': NULL}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': NULL}]);
CREATE TABLE test22 (s STRUCT(i integer[], j integer[]));
INSERT INTO test22 VALUES
({'i': [0, NULL], 'j': [NULL, 0]}),
({'i': [0, NULL], 'j': [NULL, 1]}),
({'i': [0, NULL], 'j': [1, 2]}),
({'i': [1, NULL], 'j': [2, NULL]}),
({'i': [0, 2], 'j': [2, NULL]}),
({'i': NULL, 'j': [2, NULL]}),
({'i': [0, 2], 'j': NULL}),
({'i': NULL, 'j': [2, 3]});
CREATE TABLE test24 (l STRUCT(l1 STRUCT(i integer)[])[]);
INSERT INTO test24 VALUES
([{'l1': [{'i': 0}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 2}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 1}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]);
DROP TABLE test0;
DROP TABLE test2;
DROP TABLE test3;
DROP TABLE test4;
DROP TABLE test10;
DROP TABLE test11;
DROP TABLE test13;
DROP TABLE test20;
DROP TABLE test22;
DROP TABLE test24;
CREATE TABLE test0 (i bigint[]);
INSERT INTO test0 VALUES ([2]), ([1]), ([1, 2]), ([]), ([2, 2]), ([NULL]), ([2, 3]);
INSERT INTO test0 VALUES (NULL);
CREATE TABLE test2 (i bigint[][]);
INSERT INTO test2 VALUES ([[2]]), ([[1]]), ([NULL, []]), ([[1], [2]]), ([]), ([[]]), ([[2], [2]]), ([NULL]), (NULL), ([[2], [3]]);
CREATE TABLE test3 (i bigint[][]);
INSERT INTO test3 VALUES ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], []]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 1]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 2]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], NULL]);
CREATE TABLE test4 (i bigint[][]);
INSERT INTO test4 VALUES ([[NULL, NULL, 0], [1, NULL, 1]]), ([[NULL, NULL, 1]]), ([[NULL, NULL, 0], [1, NULL, 0]]), ([[0, NULL, NULL, 1]]), ([[0, NULL, NULL, 0]]);
CREATE TABLE test10 (s STRUCT(i bigint, j bigint));
INSERT INTO test10 values
({'i': 2, 'j': NULL}),
({'i': 1, 'j': NULL}),
({'i': 2, 'j': 3}),
({'i': 1, 'j': 2}),
({'i': 2, 'j': 2}),
({'i': NULL, 'j': NULL}),
(NULL),
({'i': 2, 'j': 3});
CREATE TABLE test11 (s STRUCT(s1 STRUCT(i bigint, j bigint)));
INSERT INTO test11 VALUES ({'s1': NULL}), (NULL), ({'s1': {'i': NULL, 'j': 1}}), ({'s1': {'i': 0, 'j': NULL}}), ({'s1': {'i': NULL, 'j': NULL}}), ({'s1': {'i': 0, 'j': 1}});
CREATE TABLE test13 (s STRUCT(a bigint, b bigint, c bigint, d bigint, e bigint, f bigint, g bigint, h bigint, i bigint, j bigint));
INSERT INTO test13 VALUES
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 9});
CREATE TABLE test20 (l STRUCT(i bigint)[]);
INSERT INTO test20 VALUES
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': NULL}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': NULL}]);
CREATE TABLE test22 (s STRUCT(i bigint[], j bigint[]));
INSERT INTO test22 VALUES
({'i': [0, NULL], 'j': [NULL, 0]}),
({'i': [0, NULL], 'j': [NULL, 1]}),
({'i': [0, NULL], 'j': [1, 2]}),
({'i': [1, NULL], 'j': [2, NULL]}),
({'i': [0, 2], 'j': [2, NULL]}),
({'i': NULL, 'j': [2, NULL]}),
({'i': [0, 2], 'j': NULL}),
({'i': NULL, 'j': [2, 3]});
CREATE TABLE test24 (l STRUCT(l1 STRUCT(i bigint)[])[]);
INSERT INTO test24 VALUES
([{'l1': [{'i': 0}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 2}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 1}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]);
DROP TABLE test0;
DROP TABLE test2;
DROP TABLE test3;
DROP TABLE test4;
DROP TABLE test10;
DROP TABLE test11;
DROP TABLE test13;
DROP TABLE test20;
DROP TABLE test22;
DROP TABLE test24;
CREATE TABLE test0 (i hugeint[]);
INSERT INTO test0 VALUES ([2]), ([1]), ([1, 2]), ([]), ([2, 2]), ([NULL]), ([2, 3]);
INSERT INTO test0 VALUES (NULL);
CREATE TABLE test2 (i hugeint[][]);
INSERT INTO test2 VALUES ([[2]]), ([[1]]), ([NULL, []]), ([[1], [2]]), ([]), ([[]]), ([[2], [2]]), ([NULL]), (NULL), ([[2], [3]]);
CREATE TABLE test3 (i hugeint[][]);
INSERT INTO test3 VALUES ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], []]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 1]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 2]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], NULL]);
CREATE TABLE test4 (i hugeint[][]);
INSERT INTO test4 VALUES ([[NULL, NULL, 0], [1, NULL, 1]]), ([[NULL, NULL, 1]]), ([[NULL, NULL, 0], [1, NULL, 0]]), ([[0, NULL, NULL, 1]]), ([[0, NULL, NULL, 0]]);
CREATE TABLE test10 (s STRUCT(i hugeint, j hugeint));
INSERT INTO test10 values
({'i': 2, 'j': NULL}),
({'i': 1, 'j': NULL}),
({'i': 2, 'j': 3}),
({'i': 1, 'j': 2}),
({'i': 2, 'j': 2}),
({'i': NULL, 'j': NULL}),
(NULL),
({'i': 2, 'j': 3});
CREATE TABLE test11 (s STRUCT(s1 STRUCT(i hugeint, j hugeint)));
INSERT INTO test11 VALUES ({'s1': NULL}), (NULL), ({'s1': {'i': NULL, 'j': 1}}), ({'s1': {'i': 0, 'j': NULL}}), ({'s1': {'i': NULL, 'j': NULL}}), ({'s1': {'i': 0, 'j': 1}});
CREATE TABLE test13 (s STRUCT(a hugeint, b hugeint, c hugeint, d hugeint, e hugeint, f hugeint, g hugeint, h hugeint, i hugeint, j hugeint));
INSERT INTO test13 VALUES
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 9});
CREATE TABLE test20 (l STRUCT(i hugeint)[]);
INSERT INTO test20 VALUES
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': NULL}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': NULL}]);
CREATE TABLE test22 (s STRUCT(i hugeint[], j hugeint[]));
INSERT INTO test22 VALUES
({'i': [0, NULL], 'j': [NULL, 0]}),
({'i': [0, NULL], 'j': [NULL, 1]}),
({'i': [0, NULL], 'j': [1, 2]}),
({'i': [1, NULL], 'j': [2, NULL]}),
({'i': [0, 2], 'j': [2, NULL]}),
({'i': NULL, 'j': [2, NULL]}),
({'i': [0, 2], 'j': NULL}),
({'i': NULL, 'j': [2, 3]});
CREATE TABLE test24 (l STRUCT(l1 STRUCT(i hugeint)[])[]);
INSERT INTO test24 VALUES
([{'l1': [{'i': 0}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 2}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 1}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]);
DROP TABLE test0;
DROP TABLE test2;
DROP TABLE test3;
DROP TABLE test4;
DROP TABLE test10;
DROP TABLE test11;
DROP TABLE test13;
DROP TABLE test20;
DROP TABLE test22;
DROP TABLE test24;
CREATE TABLE test0 (i utinyint[]);
INSERT INTO test0 VALUES ([2]), ([1]), ([1, 2]), ([]), ([2, 2]), ([NULL]), ([2, 3]);
INSERT INTO test0 VALUES (NULL);
CREATE TABLE test2 (i utinyint[][]);
INSERT INTO test2 VALUES ([[2]]), ([[1]]), ([NULL, []]), ([[1], [2]]), ([]), ([[]]), ([[2], [2]]), ([NULL]), (NULL), ([[2], [3]]);
CREATE TABLE test3 (i utinyint[][]);
INSERT INTO test3 VALUES ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], []]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 1]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 2]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], NULL]);
CREATE TABLE test4 (i utinyint[][]);
INSERT INTO test4 VALUES ([[NULL, NULL, 0], [1, NULL, 1]]), ([[NULL, NULL, 1]]), ([[NULL, NULL, 0], [1, NULL, 0]]), ([[0, NULL, NULL, 1]]), ([[0, NULL, NULL, 0]]);
CREATE TABLE test10 (s STRUCT(i utinyint, j utinyint));
INSERT INTO test10 values
({'i': 2, 'j': NULL}),
({'i': 1, 'j': NULL}),
({'i': 2, 'j': 3}),
({'i': 1, 'j': 2}),
({'i': 2, 'j': 2}),
({'i': NULL, 'j': NULL}),
(NULL),
({'i': 2, 'j': 3});
CREATE TABLE test11 (s STRUCT(s1 STRUCT(i utinyint, j utinyint)));
INSERT INTO test11 VALUES ({'s1': NULL}), (NULL), ({'s1': {'i': NULL, 'j': 1}}), ({'s1': {'i': 0, 'j': NULL}}), ({'s1': {'i': NULL, 'j': NULL}}), ({'s1': {'i': 0, 'j': 1}});
CREATE TABLE test13 (s STRUCT(a utinyint, b utinyint, c utinyint, d utinyint, e utinyint, f utinyint, g utinyint, h utinyint, i utinyint, j utinyint));
INSERT INTO test13 VALUES
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': 7, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': NULL, 'f': NULL, 'g': NULL, 'h': NULL, 'i': 8, 'j': 9}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 8}),
({'a': 0, 'b': 1, 'c': 2, 'd': 3, 'e': 4, 'f': 5, 'g': 6, 'h': NULL, 'i': NULL, 'j': 9});
CREATE TABLE test20 (l STRUCT(i utinyint)[]);
INSERT INTO test20 VALUES
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': 0}, {'i': NULL}, {'i': NULL}, {'i': NULL}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': 1}]),
([{'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': NULL}, {'i': 0}]),
([{'i': NULL}, {'i': NULL}, {'i': 1}, {'i': NULL}, {'i': NULL}, {'i': NULL}]);
CREATE TABLE test22 (s STRUCT(i utinyint[], j utinyint[]));
INSERT INTO test22 VALUES
({'i': [0, NULL], 'j': [NULL, 0]}),
({'i': [0, NULL], 'j': [NULL, 1]}),
({'i': [0, NULL], 'j': [1, 2]}),
({'i': [1, NULL], 'j': [2, NULL]}),
({'i': [0, 2], 'j': [2, NULL]}),
({'i': NULL, 'j': [2, NULL]}),
({'i': [0, 2], 'j': NULL}),
({'i': NULL, 'j': [2, 3]});
CREATE TABLE test24 (l STRUCT(l1 STRUCT(i utinyint)[])[]);
INSERT INTO test24 VALUES
([{'l1': [{'i': 0}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 2}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': 1}, {'i': 1}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 0}]}]),
([{'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': 1}]}]),
([{'l1': [{'i': 0}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}]),
([{'l1': [{'i': 1}]}, {'l1': [{'i': NULL}]}, {'l1': [{'i': NULL}]}]);
DROP TABLE test0;
DROP TABLE test2;
DROP TABLE test3;
DROP TABLE test4;
DROP TABLE test10;
DROP TABLE test11;
DROP TABLE test13;
DROP TABLE test20;
DROP TABLE test22;
DROP TABLE test24;
CREATE TABLE test0 (i usmallint[]);
INSERT INTO test0 VALUES ([2]), ([1]), ([1, 2]), ([]), ([2, 2]), ([NULL]), ([2, 3]);
INSERT INTO test0 VALUES (NULL);
CREATE TABLE test2 (i usmallint[][]);
INSERT INTO test2 VALUES ([[2]]), ([[1]]), ([NULL, []]), ([[1], [2]]), ([]), ([[]]), ([[2], [2]]), ([NULL]), (NULL), ([[2], [3]]);
CREATE TABLE test3 (i usmallint[][]);
INSERT INTO test3 VALUES ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], []]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 1]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [5, 5, 5, 5, 2]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], [NULL]]), ([[3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5], NULL]);
CREATE TABLE test4 (i usmallint[][]);
INSERT INTO test4 VALUES ([[NULL, NULL, 0], [1, NULL, 1]]), ([[NULL, NULL, 1]]), ([[NULL, NULL, 0], [1, NULL, 0]]), ([[0, NULL, NULL, 1]]), ([[0, NULL, NULL, 0]]);
