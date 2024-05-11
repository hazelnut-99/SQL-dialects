CREATE TABLE aggtest (
	a 			int2,
	b			float4
);
rollback;
create table minmaxtest(f1 int);
create table minmaxtest1() inherits (minmaxtest);
create table minmaxtest2() inherits (minmaxtest);
create table minmaxtest3() inherits (minmaxtest);
create index minmaxtesti on minmaxtest(f1);
create index minmaxtest1i on minmaxtest1(f1);
create index minmaxtest2i on minmaxtest2(f1 desc);
create index minmaxtest3i on minmaxtest3(f1) where f1 is not null;
insert into minmaxtest values(11), (12);
insert into minmaxtest1 values(13), (14);
insert into minmaxtest2 values(15), (16);
insert into minmaxtest3 values(17), (18);
drop table minmaxtest cascade;
create temp table t1 (a int, b int, c int, d int, primary key (a, b));
create temp table t2 (x int, y int, z int, primary key (x, y));
create temp table t3 (a int, b int, c int, primary key(a, b) deferrable);
create temp table t1c () inherits (t1);
create temp table p_t1 (
  a int,
  b int,
  c int,
  d int,
  primary key(a,b)
) partition by list(a);
create temp table p_t1_1 partition of p_t1 for values in(1);
create temp table p_t1_2 partition of p_t1 for values in(2);
drop table t1 cascade;
drop table t2;
drop table t3;
drop table p_t1;
create temp table t1(f1 int, f2 int);
create temp table t2(f1 bigint, f2 oid);
drop table t1, t2;
create table bytea_test_table(v bytea);
insert into bytea_test_table values(decode('ff','hex'));
insert into bytea_test_table values(decode('aa','hex'));
