SELECT c-d,
       a+b*2+c*3+d*4+e*5,
       c,
       abs(b-c),
       e,
       d,
       d-e
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR c>d;
