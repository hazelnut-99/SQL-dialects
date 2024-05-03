SELECT
    a,
    count()
FROM remote('127.0.0.{1,2}', currentDatabase(), local_t)
GROUP BY a
    WITH TOTALS
HAVING a IN 
(
    SELECT 1
);
