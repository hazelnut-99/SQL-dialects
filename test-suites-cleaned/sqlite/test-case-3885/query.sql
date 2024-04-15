SELECT c-d,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       d-e
  FROM t1
 ORDER BY 5,3,2,4;
