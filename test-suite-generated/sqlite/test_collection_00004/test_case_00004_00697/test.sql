SELECT c-d,
       abs(a),
       b-c,
       b,
       a+b*2+c*3+d*4,
       c
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND d>e
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 4,3,6,5,2,1;
