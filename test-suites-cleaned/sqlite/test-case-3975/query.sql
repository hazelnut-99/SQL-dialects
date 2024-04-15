SELECT a+b*2+c*3+d*4+e*5,
       abs(a),
       abs(b-c),
       a-b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c-d
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d>e
 ORDER BY 5,2,1,3;
