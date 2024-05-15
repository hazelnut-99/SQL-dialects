SELECT d,
       (a+b+c+d+e)/5,
       d-e,
       b-c,
       b,
       a+b*2+c*3+d*4+e*5,
       a+b*2
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR c>d;
