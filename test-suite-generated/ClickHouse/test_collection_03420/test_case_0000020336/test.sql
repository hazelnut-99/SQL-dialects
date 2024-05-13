SELECT
    number,
    sum(number) OVER (PARTITION BY number % 10) / count() OVER (PARTITION BY number % 10),
    avg(number) OVER (PARTITION BY number % 10)
FROM numbers(100)
ORDER BY number ASC;
