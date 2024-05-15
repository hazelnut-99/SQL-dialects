SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4,
       c-d,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 ORDER BY 2,3,4,5,1;
