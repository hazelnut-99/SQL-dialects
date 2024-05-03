SELECT avgOrNullIf(x, x > 1) FROM (SELECT 1 AS x);
