SELECT toStartOfMonth(d) as d, count() FROM with_fill_date GROUP BY d ORDER BY d WITH FILL
    FROM toDate('2020-01-01')
    TO toDate('2021-01-01')
    STEP INTERVAL 3 MONTH;
