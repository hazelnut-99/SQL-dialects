drop table if exists t;
create table t (c Decimal32(9)) engine MergeTree order by c;
insert into t values (0.9);
