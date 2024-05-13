SELECT a, sum(s), count() from rollup GROUP BY a WITH ROLLUP ORDER BY a;
