SELECT i, SUM(i) OVER(ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) FROM integers;
