SELECT sumMerge(x + y), sumMerge(x), sumMerge(y) FROM (SELECT sumState(a) as x, sumState(b) as y from add_aggregate);
