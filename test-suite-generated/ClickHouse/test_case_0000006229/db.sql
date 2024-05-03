drop table if exists data;
create table data (key SimpleAggregateFunction(max, Int)) engine=AggregatingMergeTree() order by tuple();
insert into data values (0);
