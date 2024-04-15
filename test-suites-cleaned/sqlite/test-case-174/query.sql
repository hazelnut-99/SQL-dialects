SELECT b,
       d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(b-c),
       a+b*2+c*3+d*4+e*5,
       a+b*2
  FROM t1
 WHERE d>e
   AND c>d
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 6,5,2,1,3,4;
