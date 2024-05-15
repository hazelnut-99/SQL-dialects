SELECT a, b, sum(s), count() from rollup GROUP BY a, b WITH ROLLUP ORDER BY a, b;
