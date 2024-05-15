SELECT a+b*2+c*3+d*4,
       a-b,
       a+b*2+c*3,
       e
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR c BETWEEN b-2 AND d+2;
