drop table if exists test;
create table test (x Map(UInt8, AggregateFunction(uniq, UInt64))) engine=Memory;
insert into test select uniqStateMap(map(1, number)) from numbers(10);
truncate table test;
drop table test;
create table test (x Map(UInt8, Array(Map(UInt8, Array(AggregateFunction(uniq, UInt64)))))) engine=Memory;
insert into test select uniqStateForEachMapForEachMap(map(1, [map(1, [number, number])])) from numbers(10);
