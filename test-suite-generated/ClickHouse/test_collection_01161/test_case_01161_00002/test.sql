SELECT a, b, sum(c), avg(d) FROM pk_order GROUP BY a, b ORDER BY a, b;
