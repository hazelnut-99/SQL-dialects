select COUNT(*) from (SELECT * FROM a UNION ALL SELECT * FROM b) t1;
