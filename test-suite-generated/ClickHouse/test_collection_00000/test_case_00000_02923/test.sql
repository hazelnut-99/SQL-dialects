SELECT
    number IN (1, 2) AS x,
    count()
FROM numbers(10)
GROUP BY x
ORDER BY x;
