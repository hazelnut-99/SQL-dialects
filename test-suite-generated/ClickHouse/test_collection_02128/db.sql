CREATE DATABASE IF NOT EXISTS test_02115;
USE test_02115;
DROP TABLE IF EXISTS t1_local;
DROP TABLE IF EXISTS t2_local;
DROP TABLE IF EXISTS t1_all;
DROP TABLE IF EXISTS t2_all;
create table t1_local(a Int32) engine=MergeTree() order by a;
create table t2_local as t1_local;
insert into t1_local values (1), (2), (3);
insert into t2_local values (1), (2), (3);
