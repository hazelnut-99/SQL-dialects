SELECT uniqMerge(x * 10) FROM (SELECT uniqState(b) AS x FROM mult_aggregation);
