drop table if exists t0;
drop table if exists t1;
drop table if exists t3;
create table t0 (pkey UInt32, c1 UInt32, primary key(pkey)) engine = MergeTree;
create table t1 (vkey UInt32, primary key(vkey)) engine = MergeTree;
create table t3 (c17 String, primary key(c17)) engine = MergeTree;
insert into t1 values (3);
