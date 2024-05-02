SELECT b-c,
       abs(a),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3+d*4,
       e
  FROM t1
 WHERE d>e
    OR a>b
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 5,3;
