SELECT a, b, sum(s), count() from cube GROUP BY CUBE(a, b) WITH TOTALS ORDER BY a, b;
