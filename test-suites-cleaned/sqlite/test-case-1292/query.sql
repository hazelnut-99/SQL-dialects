SELECT a-b,
       (a+b+c+d+e)/5,
       a,
       a+b*2,
       e
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);
