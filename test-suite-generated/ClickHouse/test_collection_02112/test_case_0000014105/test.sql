SELECT *
FROM
(
    SELECT a
    FROM remote('127.0.0.1', currentDatabase(), local_t)
    GROUP BY a
        WITH TOTALS
)
WHERE a IN 
(
    SELECT 1
);
