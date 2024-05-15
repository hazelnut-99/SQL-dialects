SELECT e,
       a,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (a+b+c+d+e)/5,
       d-e
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR d>e
 ORDER BY 3,1,5,2,4;
