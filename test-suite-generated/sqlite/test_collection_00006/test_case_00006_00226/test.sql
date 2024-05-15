SELECT d-e,
       a+b*2+c*3+d*4,
       d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a-b,
       b
  FROM t1
 WHERE c>d
   AND a>b
 ORDER BY 2,4,3,6,1,5;
