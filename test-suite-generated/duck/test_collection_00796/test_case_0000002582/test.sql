select j from (SELECT i i, i j, k, l FROM a UNION ALL SELECT * FROM b) t1 WHERE i=40 AND j=41;
