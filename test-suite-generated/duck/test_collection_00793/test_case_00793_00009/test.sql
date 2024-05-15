select j from (SELECT i, COUNT(*) j, COUNT(*) k, COUNT(*) l FROM a WHERE i=42 GROUP BY i UNION ALL SELECT * FROM b) t1 WHERE i=40;
