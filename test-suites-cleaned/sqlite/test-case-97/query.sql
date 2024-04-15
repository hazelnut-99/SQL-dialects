SELECT c-d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a,
       abs(a),
       abs(b-c),
       a+b*2+c*3,
       e
  FROM t1
 WHERE d>e
   AND (e>a AND e<b)
 ORDER BY 7,2,6,1,3,4,5;
