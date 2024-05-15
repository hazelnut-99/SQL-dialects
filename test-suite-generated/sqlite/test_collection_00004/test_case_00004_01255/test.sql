SELECT a+b*2+c*3,
       abs(b-c),
       a+b*2,
       abs(a),
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 1,3,2,4;
