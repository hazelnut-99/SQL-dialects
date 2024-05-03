WITH 0.1 AS level
SELECT quantile(level)(number)
FROM numbers(1000);
