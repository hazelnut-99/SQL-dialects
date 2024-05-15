select COUNT(*) from (SELECT * FROM a UNION ALL SELECT * FROM b UNION ALL SELECT a.i,a.j,a.k,a.l FROM a,b) t1;
