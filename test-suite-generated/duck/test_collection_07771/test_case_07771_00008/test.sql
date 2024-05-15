SELECT r % 3, r, n, median(n) over (partition by r % 3 order by r)
FROM (SELECT r, CASE r % 2 WHEN 0 THEN r ELSE NULL END AS n FROM quantiles) nulls
ORDER BY 1, 2;
