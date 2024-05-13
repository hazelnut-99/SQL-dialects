SELECT a, b, sum(s), count() from rollup GROUP BY ROLLUP(a, b) ORDER BY a, b;
