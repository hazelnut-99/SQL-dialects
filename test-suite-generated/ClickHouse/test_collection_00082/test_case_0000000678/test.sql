SELECT t1.k, t1.s, t2.x
FROM ( SELECT number AS k, 'a' AS s FROM numbers(2) GROUP BY number WITH TOTALS ORDER BY number) AS t1
ANY LEFT JOIN t2 AS t2 USING(k);
