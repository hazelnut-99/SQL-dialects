SELECT c,
       a-b,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (e>a AND e<b)
   AND c BETWEEN b-2 AND d+2
   AND d>e
 ORDER BY 3,2,1,4;
