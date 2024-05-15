SELECT a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       d-e,
       (a+b+c+d+e)/5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 ORDER BY 2,5,4,3,1;
