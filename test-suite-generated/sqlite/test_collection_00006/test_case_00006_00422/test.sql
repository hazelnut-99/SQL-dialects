SELECT a+b*2+c*3,
       c-d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5
  FROM t1
 ORDER BY 1,6,5,3,4,2;
