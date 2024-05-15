SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c,
       a+b*2+c*3+d*4,
       abs(a),
       a-b
  FROM t1
 WHERE b>c
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 3,5;
