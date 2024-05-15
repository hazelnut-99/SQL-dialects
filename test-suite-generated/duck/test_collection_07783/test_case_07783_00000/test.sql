SELECT 
	*, 
	RANK() OVER (ORDER BY x NULLS FIRST) rank_nulls_first,
	RANK() OVER (ORDER BY x NULLS LAST) rank_nulls_last,
FROM VALUES (1), (1), (1), (NULL) as issue8315(x)
ORDER BY x;
