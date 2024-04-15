SELECT a+b*2+c*3+d*4,
       b-c,
       d-e,
       (a+b+c+d+e)/5,
       c-d,
       a+b*2,
       a
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);
