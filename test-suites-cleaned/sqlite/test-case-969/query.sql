SELECT d-e,
       c-d,
       b,
       b-c,
       abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 5,3,4,2,6,1;
