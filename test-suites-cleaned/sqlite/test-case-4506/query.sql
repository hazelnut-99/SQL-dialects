SELECT a+b*2,
       d,
       a+b*2+c*3+d*4+e*5,
       e
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);
