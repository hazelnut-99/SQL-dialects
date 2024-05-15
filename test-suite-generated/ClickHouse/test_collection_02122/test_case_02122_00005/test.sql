SELECT toStartOfMonth(d) as d, count() FROM with_fill_date GROUP BY d ORDER BY d WITH FILL STEP INTERVAL 1 MONTH LIMIT 5;
