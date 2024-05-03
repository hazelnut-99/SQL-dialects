SELECT avgOrDefaultIfMerge(state) FROM (SELECT avgOrDefaultIfState(x, x > 0) AS state FROM (SELECT 1 AS x));
