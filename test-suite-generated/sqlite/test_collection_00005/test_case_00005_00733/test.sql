SELECT e,
       a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a,
       b-c
  FROM t1
 WHERE a>b
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND d>e;
