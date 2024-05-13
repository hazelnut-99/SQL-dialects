SELECT a, sum(s), count() from rollup GROUP BY ROLLUP(a) ORDER BY a;
