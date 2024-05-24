SELECT maxOrNullIfMerge(state) FROM (SELECT maxOrNullIfState(x, x > 1) AS state FROM (SELECT 1 AS x));
