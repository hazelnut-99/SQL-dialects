SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       e,
       d,
       b-c,
       (a+b+c+d+e)/5,
       abs(b-c),
       a+b*2+c*3
  FROM t1
 ORDER BY 4,3,5,1,7,2,6;
