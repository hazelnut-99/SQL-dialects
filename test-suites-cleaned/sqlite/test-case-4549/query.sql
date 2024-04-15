SELECT a+b*2+c*3,
       a,
       d,
       a+b*2,
       abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 1,5,7;
