SELECT toStartOfMonth(d) as d, id, count() FROM with_fill_date
GROUP BY d, id
ORDER BY
d WITH FILL
    FROM toDate('2020-01-01')
    TO toDate('2020-05-01')
    STEP INTERVAL 1 MONTH,
id WITH FILL FROM 1 TO 5;
