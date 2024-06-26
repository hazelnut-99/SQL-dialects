drop table if exists test_quantile;
create table test_quantile (x AggregateFunction(quantileTiming(0.2), UInt64)) engine = Memory;
insert into test_quantile select medianTimingState(.2)(number) from (select * from numbers(1000) order by number desc);
