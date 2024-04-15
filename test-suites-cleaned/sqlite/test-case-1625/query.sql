SELECT d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c)
  FROM t1
 WHERE b>c
   AND d>e
   AND coalesce(a,b,c,d,e)<>0;
