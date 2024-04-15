SELECT abs(b-c),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       abs(a),
       a+b*2+c*3+d*4+e*5,
       b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (e>a AND e<b)
    OR e+d BETWEEN a+b-10 AND c+130
    OR d>e;
