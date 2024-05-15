drop table if exists t;
drop table if exists t_mv;
create table t (x UInt64) engine = MergeTree order by x;
create materialized view t_mv engine = MergeTree order by tuple() as select uniq(x), bitAnd(x, 255) as y from t group by y;
insert into t select number from numbers(300);
