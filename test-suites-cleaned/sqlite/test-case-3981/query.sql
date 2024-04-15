SELECT a+b*2+c*3+d*4,
       a,
       e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3
  FROM t1
 WHERE b>c
    OR d>e
 ORDER BY 2,1,3,5,6,4;
