SELECT a, b, count(a) FROM lc GROUP BY a, b WITH ROLLUP ORDER BY a, b;
