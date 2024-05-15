SELECT "Store", "Weekly_Sales"
FROM (
	SELECT "Store", "Date", "Weekly_Sales", ROW_NUMBER() OVER (
		PARTITION BY "Store" ORDER BY "Date" DESC, "Dept"
		) r
	FROM data) w
WHERE r = 1
ORDER BY 1;
