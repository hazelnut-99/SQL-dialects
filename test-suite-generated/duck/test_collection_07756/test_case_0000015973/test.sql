SELECT r, r // 3, n, mode(n) over (partition by r % 3 order by r)
FROM (SELECT r, CASE r % 2 WHEN 0 THEN r ELSE NULL END AS n FROM modes) nulls
ORDER BY 1;
