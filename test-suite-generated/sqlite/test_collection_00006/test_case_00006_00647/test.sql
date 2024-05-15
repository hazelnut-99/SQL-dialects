SELECT b,
       a,
       abs(b-c),
       a+b*2+c*3+d*4+e*5,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(a),
       a+b*2
  FROM t1
 ORDER BY 4,1,2,7,5,3,6;
