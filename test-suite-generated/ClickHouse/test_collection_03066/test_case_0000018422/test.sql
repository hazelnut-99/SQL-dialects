SELECT toStartOfMonth(d32) as d32, count() FROM with_fill_date GROUP BY d32 ORDER BY d32 WITH FILL
    FROM toDate('2020-01-01')
    TO toDate('2021-01-01')
    STEP INTERVAL 3 MONTH;
