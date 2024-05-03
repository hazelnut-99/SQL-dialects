SELECT a, b, count(a) FROM lc GROUP BY a, b WITH CUBE ORDER BY a, b;
