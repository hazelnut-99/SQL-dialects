SELECT a+b*2+c*3+d*4+e*5,
       b-c,
       b,
       a,
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (a+b+c+d+e)/5
  FROM t1;
