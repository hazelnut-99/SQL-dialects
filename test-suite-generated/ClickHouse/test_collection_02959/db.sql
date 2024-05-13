WITH 1 AS max_size
SELECT groupArray(max_size)(col)
FROM
     (SELECT col FROM (
         SELECT 1 as col
         UNION ALL
         SELECT 2
     ) ORDER BY col);
WITH 0.1 AS level
SELECT quantile(level)(number)
FROM numbers(1000);
