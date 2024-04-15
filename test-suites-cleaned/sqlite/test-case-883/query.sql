SELECT d,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a,
       c-d,
       a-b
  FROM t1
 ORDER BY 6,4,3,2,5,1;
