drop table if exists t1_00816;
drop table if exists t2_00816;
create table t1_00816 (a Int8, val Float32) engine=Memory();
create table t2_00816 (a Int8, val Float32) engine=Memory();
INSERT INTO t1_00816 VALUES (1, 123);
INSERT INTO t2_00816 VALUES (1, 456);
