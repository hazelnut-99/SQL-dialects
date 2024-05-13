drop table if exists t;
create table t (a Int8, val Float32) engine = Memory();
insert into t values (1,1.1), (1,1.2), (2,2.1);
