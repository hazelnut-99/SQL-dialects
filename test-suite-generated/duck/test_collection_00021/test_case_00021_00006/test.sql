SELECT COUNT(*) FROM (SELECT i, SUM(RANDOM()) AS k FROM integers GROUP BY i HAVING k=k) tbl(i, k);
