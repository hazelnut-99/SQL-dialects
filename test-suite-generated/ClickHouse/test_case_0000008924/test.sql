SELECT 0.1 AS level, quantile(level)(number)
FROM numbers(1000);
