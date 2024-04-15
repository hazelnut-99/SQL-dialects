SELECT (a+b+c+d+e)/5,
       abs(b-c),
       c-d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a,
       b,
       abs(a)
  FROM t1
 WHERE c>d
    OR c BETWEEN b-2 AND d+2;
