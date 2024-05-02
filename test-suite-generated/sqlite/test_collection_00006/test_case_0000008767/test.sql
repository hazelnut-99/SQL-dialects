SELECT (a+b+c+d+e)/5,
       a+b*2,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b-c,
       d-e,
       b
  FROM t1
 ORDER BY 6,1,4,3,5,2;
