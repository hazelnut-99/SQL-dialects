SELECT e,
       b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (a+b+c+d+e)/5,
       a+b*2
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR a>b
    OR d>e
 ORDER BY 3,1;
