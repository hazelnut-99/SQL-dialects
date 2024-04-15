SELECT a+b*2,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b,
       a-b,
       b-c,
       d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR (c<=d-2 OR c>=d+2)
    OR (e>a AND e<b)
 ORDER BY 2,6,1,4,3,5;
