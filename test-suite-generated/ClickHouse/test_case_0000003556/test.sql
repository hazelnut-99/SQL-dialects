SELECT
    'processed' AS type,
    max(number) AS max_date,
    min(number) AS min_date
FROM numbers(100)
GROUP BY type;
