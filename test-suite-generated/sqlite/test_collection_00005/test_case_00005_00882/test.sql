SELECT abs(b-c),
       d,
       a+b*2+c*3+d*4+e*5,
       a-b,
       c-d,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (a+b+c+d+e)/5
  FROM t1
 WHERE d>e;
