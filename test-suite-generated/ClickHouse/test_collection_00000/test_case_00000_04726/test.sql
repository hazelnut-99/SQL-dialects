SELECT stddevSampOrDefaultIfMerge(state) FROM (SELECT stddevSampOrDefaultIfState(x, x > 1) AS state FROM (SELECT 1 AS x));
