SELECT a, b, sum(s), count() from rollup GROUP BY ROLLUP(a, b) WITH TOTALS ORDER BY a, b;
