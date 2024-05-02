SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3,
       d,
       b
  FROM t1
 ORDER BY 2,1,3,4;
