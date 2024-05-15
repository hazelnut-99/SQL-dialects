SELECT avgOrDefaultIfMerge(state) FROM (SELECT avgOrDefaultIfState(x, x > 1) AS state FROM (SELECT 1 AS x));
