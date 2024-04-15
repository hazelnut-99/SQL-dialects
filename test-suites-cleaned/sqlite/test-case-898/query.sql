SELECT b,
       a-b,
       e,
       d,
       abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND d>e
 ORDER BY 2,1,5,3,6,4,7;
