SELECT r % 3 as p, r, n, mad(n) over (partition by r % 3 order by r)
FROM (SELECT r, CASE r % 2 WHEN 0 THEN r ELSE NULL END AS n FROM mads) nulls
ORDER BY 1, 2;
