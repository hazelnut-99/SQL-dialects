SELECT alias(i % 2) AS p, alias(SUM(i)) AS sum_i FROM integers GROUP BY p ORDER BY 1;
