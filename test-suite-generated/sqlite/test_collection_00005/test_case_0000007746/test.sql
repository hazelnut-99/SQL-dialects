SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       a+b*2+c*3+d*4+e*5,
       a,
       (a+b+c+d+e)/5,
       e,
       d
  FROM t1;
