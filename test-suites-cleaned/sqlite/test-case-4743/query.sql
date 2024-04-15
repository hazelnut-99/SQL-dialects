SELECT d,
       a+b*2,
       abs(a),
       abs(b-c),
       a-b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE d>e
    OR (e>a AND e<b)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 2,5,3,1,4,6;
