SELECT a+b*2+c*3,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c,
       (a+b+c+d+e)/5,
       d-e,
       a+b*2+c*3+d*4+e*5
  FROM t1
 ORDER BY 4,5;
