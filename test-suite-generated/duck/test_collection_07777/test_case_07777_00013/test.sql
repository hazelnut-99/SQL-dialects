SELECT i, array_agg(i) OVER w
FROM (
	SELECT * FROM generate_series(1,5)
    UNION ALL
    SELECT * FROM generate_series(1,5) 
) AS _(i)
WINDOW w AS (ORDER BY i ROWS UNBOUNDED PRECEDING EXCLUDE GROUP)
ORDER BY i;
