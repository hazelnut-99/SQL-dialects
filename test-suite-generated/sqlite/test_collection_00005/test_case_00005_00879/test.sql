SELECT a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(b-c),
       (a+b+c+d+e)/5
  FROM t1;
