SELECT "id", "requested_date", "city", "wait_time", min("wait_time") OVER win_3d 
FROM rides 
WINDOW win_3d AS (
	PARTITION BY "city" 
	ORDER BY requested_date ASC 
	RANGE BETWEEN INTERVAL 3 DAYS PRECEDING AND INTERVAL 1 DAYS PRECEDING) 
ORDER BY "requested_date", "city", "id";
