SELECT c-d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b-c,
       b
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 3,4,2,1;
