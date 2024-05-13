select COUNT(*) from (SELECT i, j, MIN(k), MIN(l) FROM a GROUP BY i, j UNION ALL SELECT * FROM b) t1;
