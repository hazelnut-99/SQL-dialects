SELECT b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(b-c),
       a-b,
       abs(a),
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>a AND e<b)
   AND d NOT BETWEEN 110 AND 150
   AND c>d
 ORDER BY 5,4,2,3,1,6;
