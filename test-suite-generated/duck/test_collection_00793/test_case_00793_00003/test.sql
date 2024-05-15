select COUNT(*) from (SELECT DISTINCT i, j, k, l FROM a UNION ALL SELECT * FROM b) t1;
