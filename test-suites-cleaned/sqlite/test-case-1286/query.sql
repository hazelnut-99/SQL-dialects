SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b,
       a+b*2,
       abs(b-c),
       abs(a),
       b-c,
       d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND (e>a AND e<b);
