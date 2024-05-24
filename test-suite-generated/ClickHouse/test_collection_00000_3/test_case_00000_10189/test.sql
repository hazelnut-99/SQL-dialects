SELECT sum(number) + 1 AS x
FROM numbers(100)
GROUP BY number % 10
ORDER BY x;
