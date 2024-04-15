SELECT c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE b>c
   AND (e>a AND e<b)
   AND d>e
 ORDER BY 1,2;
