SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a-b,
       (a+b+c+d+e)/5,
       c-d,
       abs(a),
       a+b*2+c*3
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130;
