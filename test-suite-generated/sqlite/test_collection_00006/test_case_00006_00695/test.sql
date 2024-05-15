SELECT d,
       b-c,
       a+b*2+c*3+d*4+e*5,
       a,
       abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE d>e
    OR e+d BETWEEN a+b-10 AND c+130
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 1,3,6,2,4,5;
