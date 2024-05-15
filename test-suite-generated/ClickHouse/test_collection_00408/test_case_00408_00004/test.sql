SELECT a, sum(s), count() from rollup GROUP BY a WITH ROLLUP WITH TOTALS ORDER BY a;
