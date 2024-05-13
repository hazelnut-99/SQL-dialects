SELECT sumMerge(x * 5), sumMerge(x) FROM (SELECT sumState(b) AS x FROM mult_aggregation);
