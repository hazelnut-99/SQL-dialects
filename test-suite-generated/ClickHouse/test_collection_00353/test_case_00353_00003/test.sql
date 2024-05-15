SELECT avgMerge(x * 10) FROM (SELECT avgState(b) AS x FROM mult_aggregation);
