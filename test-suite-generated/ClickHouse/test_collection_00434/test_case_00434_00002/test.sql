SELECT a, b, sum(s), count() from cube GROUP BY a, b WITH CUBE ORDER BY a, b;
