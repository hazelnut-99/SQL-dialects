SELECT d,
       c-d,
       a+b*2+c*3,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4+e*5
  FROM t1
 ORDER BY 2,5,6,3,1;
