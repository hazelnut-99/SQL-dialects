SELECT abs(b-c),
       b-c,
       a+b*2+c*3,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a
  FROM t1
 ORDER BY 3,4,2,1,5;
