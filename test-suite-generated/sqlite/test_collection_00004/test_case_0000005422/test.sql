SELECT c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a,
       d,
       a+b*2+c*3+d*4,
       a+b*2
  FROM t1
 ORDER BY 1,3,2;
