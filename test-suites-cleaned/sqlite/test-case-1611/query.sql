SELECT (a+b+c+d+e)/5,
       a,
       b-c,
       a+b*2,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       c-d
  FROM t1
 WHERE d>e
    OR c BETWEEN b-2 AND d+2
    OR (e>a AND e<b);
