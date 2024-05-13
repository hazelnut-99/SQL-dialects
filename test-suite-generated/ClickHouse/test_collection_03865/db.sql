drop table if exists simple_agg_groupArrayLastArray;
create table simple_agg_groupArrayLastArray (key Int, value SimpleAggregateFunction(groupArrayLastArray(5), Array(UInt64))) engine=AggregatingMergeTree() order by key;
insert into simple_agg_groupArrayLastArray values (1, [1,2,3]), (1, [4,5,6]), (2, [4,5,6]), (2, [1,2,3]);
