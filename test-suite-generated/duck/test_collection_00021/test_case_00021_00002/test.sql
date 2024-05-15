SELECT i AS j, COUNT(*) AS i FROM integers GROUP BY j HAVING integers.i=1 ORDER BY i;
