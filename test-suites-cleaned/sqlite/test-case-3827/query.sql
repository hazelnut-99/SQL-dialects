SELECT b,
       abs(a),
       a+b*2,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       d-e,
       a,
       c
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR d>e
 ORDER BY 5,2,1,7,3,4;
