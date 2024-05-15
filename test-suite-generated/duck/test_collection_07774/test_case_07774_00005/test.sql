SELECT r, n, mad(n) over (order by r rows between 1 preceding and 3 following)
FROM (SELECT r, CASE r % 2 WHEN 0 THEN r ELSE NULL END AS n FROM mads) nulls
ORDER BY 1;
