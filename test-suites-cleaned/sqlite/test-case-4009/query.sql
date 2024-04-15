SELECT e,
       b,
       a+b*2+c*3,
       a+b*2,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (a+b+c+d+e)/5
  FROM t1
 WHERE c>d
   AND c BETWEEN b-2 AND d+2
 ORDER BY 1,2;
