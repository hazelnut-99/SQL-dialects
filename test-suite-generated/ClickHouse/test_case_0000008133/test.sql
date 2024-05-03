SELECT avgOrNullIfMerge(state) FROM (SELECT avgOrNullIfState(x, x > 1) AS state FROM (SELECT 1 AS x));
