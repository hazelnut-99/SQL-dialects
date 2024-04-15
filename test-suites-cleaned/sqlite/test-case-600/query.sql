SELECT a+b*2+c*3+d*4,
       a-b,
       a+b*2,
       abs(a),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3
  FROM t1
 ORDER BY 1,5,4,2,6,3;
