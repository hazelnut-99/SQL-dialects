CREATE TABLE J1_TBL (
  i integer,
  j integer,
  t text
);
CREATE TABLE J2_TBL (
  i integer,
  k integer
);
INSERT INTO J1_TBL VALUES (1, 4, 'one');
INSERT INTO J1_TBL VALUES (2, 3, 'two');
INSERT INTO J1_TBL VALUES (3, 2, 'three');
INSERT INTO J1_TBL VALUES (4, 1, 'four');
INSERT INTO J1_TBL VALUES (5, 0, 'five');
INSERT INTO J1_TBL VALUES (6, 6, 'six');
INSERT INTO J1_TBL VALUES (7, 7, 'seven');
INSERT INTO J1_TBL VALUES (8, 8, 'eight');
INSERT INTO J1_TBL VALUES (0, NULL, 'zero');
INSERT INTO J1_TBL VALUES (NULL, NULL, 'null');
INSERT INTO J1_TBL VALUES (NULL, 0, 'zero');
INSERT INTO J2_TBL VALUES (1, -1);
INSERT INTO J2_TBL VALUES (2, 2);
INSERT INTO J2_TBL VALUES (3, -3);
INSERT INTO J2_TBL VALUES (2, 4);
INSERT INTO J2_TBL VALUES (5, -5);
INSERT INTO J2_TBL VALUES (5, -5);
INSERT INTO J2_TBL VALUES (0, NULL);
INSERT INTO J2_TBL VALUES (NULL, NULL);
INSERT INTO J2_TBL VALUES (NULL, 0);
create temp table onerow();
insert into onerow default values;
analyze onerow;
rollback;
CREATE TEMP TABLE t1 (a int, b int);
CREATE TEMP TABLE t2 (a int, b int);
CREATE TEMP TABLE t3 (x int, y int);
INSERT INTO t1 VALUES (5, 10);
INSERT INTO t1 VALUES (15, 20);
INSERT INTO t1 VALUES (100, 100);
INSERT INTO t1 VALUES (200, 1000);
INSERT INTO t2 VALUES (200, 2000);
INSERT INTO t3 VALUES (5, 20);
INSERT INTO t3 VALUES (6, 7);
INSERT INTO t3 VALUES (7, 8);
INSERT INTO t3 VALUES (500, 100);
DELETE FROM t3 USING t1 table1 WHERE t3.x = table1.a;
DELETE FROM t3 USING t1 JOIN t2 USING (a) WHERE t3.x > t1.a;
DELETE FROM t3 USING t3 t3_other WHERE t3.x = t3_other.x AND t3.y = t3_other.y;
create temp table t2a () inherits (t2);
insert into t2a values (200, 2001);
CREATE TEMP TABLE tt1 ( tt1_id int4, joincol int4 );
INSERT INTO tt1 VALUES (1, 11);
INSERT INTO tt1 VALUES (2, NULL);
CREATE TEMP TABLE tt2 ( tt2_id int4, joincol int4 );
INSERT INTO tt2 VALUES (21, 11);
INSERT INTO tt2 VALUES (22, 11);
create temp table tt3(f1 int, f2 text);
insert into tt3 select x, repeat('xyzzy', 100) from generate_series(1,10000) x;
analyze tt3;
create temp table tt4(f1 int);
insert into tt4 values (0),(1),(9999);
analyze tt4;
create temp table tt4x(c1 int, c2 int, c3 int);
create temp table tt5(f1 int, f2 int);
create temp table tt6(f1 int, f2 int);
insert into tt5 values(1, 10);
insert into tt5 values(1, 11);
insert into tt6 values(1, 9);
insert into tt6 values(1, 2);
insert into tt6 values(2, 9);
create temp table xx (pkxx int);
create temp table yy (pkyy int, pkxx int);
insert into xx values (1);
insert into xx values (2);
insert into xx values (3);
insert into yy values (101, 1);
insert into yy values (201, 2);
insert into yy values (301, NULL);
create temp table zt1 (f1 int primary key);
create temp table zt2 (f2 int primary key);
create temp table zt3 (f3 int primary key);
insert into zt1 values(53);
insert into zt2 values(53);
create temp view zv1 as select *,'dummy'::text AS junk from zt1;
begin;
create temp table a (i integer);
create temp table b (x integer, y integer);
rollback;
begin;
create type mycomptype as (id int, v bigint);
create temp table tidv (idv mycomptype);
create index on tidv (idv);
rollback;
begin;
create temp table a (
     code char not null,
     constraint a_pk primary key (code)
);
create temp table b (
     a char not null,
     num integer not null,
     constraint b_pk primary key (a, num)
);
create temp table c (
     name char not null,
     a char,
     constraint c_pk primary key (name)
);
insert into a (code) values ('p');
insert into a (code) values ('q');
insert into b (a, num) values ('p', 1);
insert into b (a, num) values ('p', 2);
insert into c (name, a) values ('A', 'p');
insert into c (name, a) values ('B', 'q');
insert into c (name, a) values ('C', null);
rollback;
