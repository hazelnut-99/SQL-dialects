SELECT a-b,
       b-c,
       abs(a),
       abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b,
       d-e
  FROM t1
 WHERE b IS NOT NULL
   AND e+d BETWEEN a+b-10 AND c+130
   AND c BETWEEN b-2 AND d+2;
