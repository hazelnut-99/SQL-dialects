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
