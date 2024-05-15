SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a,
       abs(a),
       c,
       d-e
  FROM t1
 ORDER BY 5,4,1,2,3;
