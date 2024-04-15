SELECT a-b,
       b-c,
       a+b*2+c*3+d*4+e*5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b
  FROM t1
 ORDER BY 3,1,2,5,4;
