select j from (SELECT * FROM a WHERE i=42 UNION ALL SELECT * FROM b) t1 WHERE i=40;
