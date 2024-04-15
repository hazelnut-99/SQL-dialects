SELECT b,
       e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d,
       d-e
  FROM t1
 WHERE d>e
   AND (e>c OR e<d)
 ORDER BY 2,1,3,4,5;
