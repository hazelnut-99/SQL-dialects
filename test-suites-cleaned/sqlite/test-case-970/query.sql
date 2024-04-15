SELECT a+b*2+c*3+d*4,
       d,
       c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3
  FROM t1
 ORDER BY 6,3,7,2,1,5,4;
