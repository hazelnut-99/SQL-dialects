SELECT r, quantile_disc(i, 0.5) OVER (ORDER BY r ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) q
FROM (VALUES
	(0, 0),
	(1, 1),
	(2, 2),
	(3, 0),
	(4, 1)
	) tbl(r, i)
ORDER BY 1, 2;
