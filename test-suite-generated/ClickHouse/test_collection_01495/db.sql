drop table if exists t;
create table t(n int, a Int64, s String) engine = MergeTree() order by a;
