SELECT a,
       e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a-b
  FROM t1
 ORDER BY 2,4,3,1;
