SELECT toStartOfWeek(d) as d, count() FROM with_fill_date GROUP BY d ORDER BY d WITH FILL STEP INTERVAL 1 WEEK LIMIT 5;
