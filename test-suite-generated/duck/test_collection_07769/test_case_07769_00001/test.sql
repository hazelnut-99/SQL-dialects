SELECT
	 x
	,y
	,z
	,count(*) OVER (PARTITION BY y) AS plain_window
	,count(*) FILTER (WHERE x = 1) OVER (PARTITION BY y) AS x_filtered_window
	,count(*) FILTER (WHERE z = 0) OVER (PARTITION BY y) AS z_filtered_window
FROM testing
ORDER BY y, x;
