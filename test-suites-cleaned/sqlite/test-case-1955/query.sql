SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(a),
       c-d
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR (c<=d-2 OR c>=d+2)
    OR b>c;
