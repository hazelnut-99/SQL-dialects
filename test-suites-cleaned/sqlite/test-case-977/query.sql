SELECT c,
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2,
       d
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR a>b
 ORDER BY 1,3,4,5,2;
