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
