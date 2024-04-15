SELECT a+b*2+c*3,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(a),
       b,
       e,
       a+b*2,
       b-c
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 7,3,5,2,4,1;
