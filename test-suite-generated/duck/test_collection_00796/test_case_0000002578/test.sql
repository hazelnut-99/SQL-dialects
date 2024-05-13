select COUNT(*) from (SELECT * FROM a UNION SELECT * FROM b UNION SELECT a.i,a.j,a.k,a.l FROM a,b) t1;
