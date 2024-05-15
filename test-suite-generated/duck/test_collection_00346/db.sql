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
