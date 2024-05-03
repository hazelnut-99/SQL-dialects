SELECT maxOrDefaultIfMerge(state) FROM (SELECT maxOrDefaultIfState(x, x > 0) AS state FROM (SELECT 1 AS x));
