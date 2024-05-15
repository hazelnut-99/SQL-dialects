SELECT a-b,
       abs(a),
       d
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR d>e
    OR c BETWEEN b-2 AND d+2
 ORDER BY 3,2,1;
