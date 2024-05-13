SELECT maxMerge(x * 10) FROM (SELECT maxState(b) AS x FROM mult_aggregation);
