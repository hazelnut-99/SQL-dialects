SELECT b % 2 AS f, SUM(a) FROM test GROUP BY f ORDER BY b % 2;
