SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       d,
       b-c,
       c
  FROM t1
 ORDER BY 3,1,2,4;
