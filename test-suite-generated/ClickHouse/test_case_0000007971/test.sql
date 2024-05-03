select arrayReduce('sumMerge', [sumState(y)]), finalizeAggregation(sumState(y)) from (select toNullable(42) as y);
