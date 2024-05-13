SELECT 1
UNION ALL
(
	SELECT * FROM generate_series(10, 12, 1)
	UNION ALL
	(
		SELECT * FROM generate_series(100, 103, 1)
	)
	UNION ALL
	SELECT * FROM generate_series(1000, 1002, 1)
)
UNION ALL
SELECT * FROM generate_series(10000, 10002, 1)
UNION ALL
(
	SELECT * FROM generate_series(100000, 100002, 1)
	UNION ALL
	SELECT * FROM generate_series(1000000, 1000003, 1)
)
LIMIT 1000;
