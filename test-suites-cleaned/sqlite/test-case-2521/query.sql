SELECT (a+b+c+d+e)/5,
       b-c,
       a+b*2+c*3+d*4+e*5,
       a,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a-b
  FROM t1
 ORDER BY 5,1;
