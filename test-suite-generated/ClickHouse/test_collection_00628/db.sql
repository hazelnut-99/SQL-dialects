drop table if exists simple;
create table simple (id UInt64,val SimpleAggregateFunction(sum,Double)) engine=AggregatingMergeTree order by id;
optimize table simple final;
drop table if exists simple;
create table simple (
    id UInt64,
    nullable_str SimpleAggregateFunction(anyLast,Nullable(String)),
    low_str SimpleAggregateFunction(anyLast,LowCardinality(Nullable(String))),
    ip SimpleAggregateFunction(anyLast,IPv4),
    status SimpleAggregateFunction(groupBitOr, UInt32),
    tup SimpleAggregateFunction(sumMap, Tuple(Array(Int32), Array(Int64))),
    tup_min SimpleAggregateFunction(minMap, Tuple(Array(Int32), Array(Int64))),
    tup_max SimpleAggregateFunction(maxMap, Tuple(Array(Int32), Array(Int64))),
    arr SimpleAggregateFunction(groupArrayArray, Array(Int32)),
    uniq_arr SimpleAggregateFunction(groupUniqArrayArray, Array(Int32))
) engine=AggregatingMergeTree order by id;
insert into simple values(1,'1','1','1.1.1.1', 1, ([1,2], [1,1]), ([1,2], [1,1]), ([1,2], [1,1]), [1,2], [1,2]);
insert into simple values(1,null,'2','2.2.2.2', 2, ([1,3], [1,1]), ([1,3], [2,2]), ([1,3], [2,2]), [2,3,4], [2,3,4]);
insert into simple values(10,'10','10','10.10.10.10', 4, ([2,3], [1,1]), ([2,3], [3,3]), ([2,3], [3,3]), [], []);
insert into simple values(10,'2222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222','20','20.20.20.20', 1, ([2, 4], [1,1]), ([2, 4], [4,4]), ([2, 4], [4,4]), [], []);
