SELECT stddevSampOrNullIfMerge(state) FROM (SELECT stddevSampOrNullIfState(x, x > 0) AS state FROM (SELECT 1 AS x));
