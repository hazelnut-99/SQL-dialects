SELECT a,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       e,
       a+b*2+c*3+d*4+e*5,
       abs(a)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND d>e
 ORDER BY 1,5,3,6,2;
