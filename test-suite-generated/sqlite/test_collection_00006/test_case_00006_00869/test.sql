SELECT abs(a),
       c,
       a+b*2,
       a+b*2+c*3+d*4,
       d,
       a
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 5,3,4,1,6,2;
