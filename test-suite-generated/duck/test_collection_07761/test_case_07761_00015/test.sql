SELECT part, min(const) AS lo, max(const) AS hi
FROM (
	SELECT part, sum(val) OVER(PARTITION BY part) as const
	FROM (
		(SELECT 1 AS part, range AS val FROM range(73))
	UNION ALL
		(SELECT 2 AS part, range AS val FROM range(75))
	UNION ALL
		(SELECT 3 AS part, range AS val FROM range(77))
	UNION ALL
		(SELECT 4 AS part, range AS val FROM range(79))
	UNION ALL
		(SELECT 5 AS part, range AS val FROM range(81))
	UNION ALL
		(SELECT 6 AS part, range AS val FROM range(83))
	) u
) t
GROUP BY ALL
ORDER BY ALL
;
