SELECT d,
       a+b*2,
       a,
       b,
       b-c,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 5,2,7,1,4,6,3;
