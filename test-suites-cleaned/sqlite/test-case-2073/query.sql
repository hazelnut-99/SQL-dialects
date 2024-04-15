SELECT a-b,
       a+b*2+c*3+d*4+e*5,
       b,
       abs(a),
       a
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND b>c
 ORDER BY 3,2,4,5;
