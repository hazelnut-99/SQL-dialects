drop table if exists simple;
create table simple (id UInt64,val SimpleAggregateFunction(sum,Double)) engine=AggregatingMergeTree order by id;
optimize table simple final;
