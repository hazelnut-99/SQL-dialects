SELECT b,
       c,
       abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       b-c,
       e
  FROM t1
 ORDER BY 4,5,1,6,2,3;
