SELECT i
	, s
	, COUNT(DISTINCT s) FILTER (WHERE i % 3 = 1) OVER( ORDER BY i ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING) AS c
FROM nested
ORDER BY i;
