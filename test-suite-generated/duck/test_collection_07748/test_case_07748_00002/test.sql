SELECT
	 x
	,y
	,z
	,median(x) OVER (PARTITION BY y) AS plain_window
	,median(x) FILTER (WHERE x = 1) OVER (PARTITION BY y) AS x_filtered_window
	,median(x) FILTER (WHERE z = 0) OVER (PARTITION BY y) AS z_filtered_window
FROM filtering
ORDER BY y, x;
