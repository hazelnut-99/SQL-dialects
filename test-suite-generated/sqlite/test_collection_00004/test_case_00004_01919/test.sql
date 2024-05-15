SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a-b,
       a
  FROM t1
 WHERE d>e
    OR e+d BETWEEN a+b-10 AND c+130
    OR a>b
 ORDER BY 2,3,1;
