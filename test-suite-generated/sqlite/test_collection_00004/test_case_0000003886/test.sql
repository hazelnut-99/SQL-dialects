SELECT d,
       a,
       a+b*2+c*3,
       a+b*2+c*3+d*4,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 ORDER BY 5,3,1,2,4;
