SELECT part, min(const) AS lo, max(const) AS hi
FROM (
	SELECT part, sum(val) OVER(PARTITION BY part) AS const
	FROM (
		SELECT part, val
		FROM (
			(SELECT range as part, random() AS val FROM range(10)) r
		CROSS JOIN 
			range(3000)
		) p
	) t
) w
GROUP BY ALL
HAVING lo <> hi
ORDER BY ALL
;
