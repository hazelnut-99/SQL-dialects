SELECT r, n, median(n) over (order by r rows between 1 preceding and 1 following)
FROM (SELECT r, CASE r % 2 WHEN 0 THEN r ELSE NULL END AS n FROM quantiles) nulls
ORDER BY 1;
