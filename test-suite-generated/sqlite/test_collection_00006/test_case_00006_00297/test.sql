SELECT b,
       abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND e+d BETWEEN a+b-10 AND c+130
   AND (e>c OR e<d)
 ORDER BY 2,1,4,3;
