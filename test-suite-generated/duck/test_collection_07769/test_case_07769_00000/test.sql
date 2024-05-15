SELECT
	 x
	,y
	,z
	,avg(x) OVER (PARTITION BY y) AS plain_window
	,avg(x) FILTER (WHERE x = 1) OVER (PARTITION BY y) AS x_filtered_window
	,avg(x) FILTER (WHERE z = 0) OVER (PARTITION BY y) AS z_filtered_window
FROM testing
ORDER BY y, x;
