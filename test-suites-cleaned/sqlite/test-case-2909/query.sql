SELECT d,
       (a+b+c+d+e)/5,
       d-e,
       b-c,
       b,
       a+b*2+c*3+d*4+e*5,
       a+b*2
  FROM t1
 WHERE c>d
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 2,7,5,1,4,6,3;
