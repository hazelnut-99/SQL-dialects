SELECT r, quantile_cont(i, 0.5) OVER (ORDER BY r ROWS BETWEEN 2 PRECEDING AND 1 FOLLOWING) q
FROM (VALUES
	(0, 0),
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 0),
	(5, 1)
	) tbl(r, i)
ORDER BY 1, 2;
