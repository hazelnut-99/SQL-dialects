SELECT b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a,
       d
  FROM t1
 WHERE (a>b-2 AND a<b+2)
 ORDER BY 4,2,3,1;
