SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d,
       e
  FROM t1
 WHERE c>d
   AND c BETWEEN b-2 AND d+2
   AND b>c
 ORDER BY 2,1,3;
