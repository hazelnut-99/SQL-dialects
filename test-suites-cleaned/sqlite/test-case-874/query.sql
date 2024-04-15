SELECT b-c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       e,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND c BETWEEN b-2 AND d+2
 ORDER BY 3,4,2,5,1;
