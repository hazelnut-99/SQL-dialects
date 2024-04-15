SELECT e,
       a,
       a+b*2+c*3,
       b,
       d
  FROM t1
 WHERE c>d
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 4,5,1,3,2;
