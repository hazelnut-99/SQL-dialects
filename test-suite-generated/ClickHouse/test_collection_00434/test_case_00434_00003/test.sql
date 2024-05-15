SELECT a, b, sum(s), count() from cube GROUP BY a, b WITH CUBE WITH TOTALS ORDER BY a, b;
