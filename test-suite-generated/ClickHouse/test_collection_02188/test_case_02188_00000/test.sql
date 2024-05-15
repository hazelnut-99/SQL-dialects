SELECT k, l, m, n, count()
FROM t2
GROUP BY k, l, m, n
ORDER BY k, l, m, n;
