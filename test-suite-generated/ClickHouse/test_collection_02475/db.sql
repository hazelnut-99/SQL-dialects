drop table if exists projection_test;
create table projection_test (dt DateTime, cost Int64, projection p (select toStartOfMinute(dt) dt_m, sum(cost) group by dt_m)) engine MergeTree partition by toDate(dt) order by dt;
