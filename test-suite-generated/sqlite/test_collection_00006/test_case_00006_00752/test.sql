SELECT d,
       abs(a),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a
  FROM t1
 WHERE a>b
 ORDER BY 1,3,4,2;
