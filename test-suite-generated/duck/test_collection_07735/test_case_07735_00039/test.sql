SELECT id, quantile_cont(id, 0.5) OVER (PARTITION BY ch ORDER BY id ROWS BETWEEN 1 FOLLOWING AND 2 FOLLOWING) 
FROM t1
ORDER BY 1;
