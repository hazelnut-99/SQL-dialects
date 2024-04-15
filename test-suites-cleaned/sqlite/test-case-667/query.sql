SELECT a+b*2,
       abs(b-c),
       a+b*2+c*3,
       c,
       e,
       d
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR b>c
 ORDER BY 6,3,5,2,1,4;
