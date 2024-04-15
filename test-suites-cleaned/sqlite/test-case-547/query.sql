SELECT b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       e,
       a+b*2,
       abs(b-c)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR c>d
    OR (a>b-2 AND a<b+2)
 ORDER BY 1,5,3,2,4;
