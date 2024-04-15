SELECT abs(b-c),
       a+b*2+c*3,
       a+b*2+c*3+d*4,
       abs(a),
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130;
