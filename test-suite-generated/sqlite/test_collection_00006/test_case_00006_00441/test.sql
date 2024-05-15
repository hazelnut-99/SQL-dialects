SELECT a+b*2,
       a-b,
       c,
       a,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 5,3,2,7,4,6,1;
