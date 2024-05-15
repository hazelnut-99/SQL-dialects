SELECT abs(a),
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE a>b
 ORDER BY 4,1,5,2,3;
