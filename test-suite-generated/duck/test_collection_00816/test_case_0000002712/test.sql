SELECT ARRAY_AGG(1)
UNION ALL
(
	SELECT ARRAY_AGG(i) FROM generate_series(10, 12, 1) tbl(i)
	UNION ALL
	(
		SELECT ARRAY_AGG(i) FROM generate_series(100, 103, 1) tbl(i)
	)
	UNION ALL
	SELECT ARRAY_AGG(i) FROM generate_series(1000, 1002, 1) tbl(i)
)
UNION ALL
SELECT ARRAY_AGG(i) FROM generate_series(10000, 10002, 1) tbl(i)
UNION ALL
(
	SELECT ARRAY_AGG(i) FROM generate_series(100000, 100002, 1) tbl(i)
	UNION ALL
	SELECT ARRAY_AGG(i) FROM generate_series(1000000, 1000003, 1) tbl(i)
)
LIMIT 1000;
