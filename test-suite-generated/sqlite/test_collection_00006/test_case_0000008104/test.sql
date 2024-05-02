SELECT abs(a),
       a+b*2+c*3+d*4,
       a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE b>c
    OR (e>a AND e<b)
 ORDER BY 2,4,1,3;
