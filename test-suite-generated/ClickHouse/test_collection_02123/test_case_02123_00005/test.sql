SELECT toStartOfDay(d) as d, count() FROM with_fill_date GROUP BY d ORDER BY d WITH FILL STEP INTERVAL 10 DAY LIMIT 5;
