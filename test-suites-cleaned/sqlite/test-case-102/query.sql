SELECT a+b*2,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c-d,
       a+b*2+c*3
  FROM t1
 WHERE d>e
 ORDER BY 4,2,1,5,3;
