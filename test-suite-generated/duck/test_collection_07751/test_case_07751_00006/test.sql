SELECT r, n, mode(n) over (order by r rows between unbounded preceding and unbounded following)
FROM (SELECT r, CASE r % 2 WHEN 0 THEN r ELSE NULL END AS n FROM modes) nulls
ORDER BY 1;
