SELECT a, b, sum(s), count() from cube GROUP BY CUBE(a, b) ORDER BY a, b;
