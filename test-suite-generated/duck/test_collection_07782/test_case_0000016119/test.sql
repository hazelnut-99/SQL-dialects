SELECT i, median(i) OVER (ORDER BY i ROWS BETWEEN 1 PRECEDING AND 2 FOLLOWING EXCLUDE TIES) 
FROM generate_series(1,5) AS _(i), 
	generate_series(1,2) 
ORDER BY i;
