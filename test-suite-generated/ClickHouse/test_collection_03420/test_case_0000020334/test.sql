SELECT number, 1 + sum(number) OVER (PARTITION BY number % 10)
FROM numbers(100)
ORDER BY number;
