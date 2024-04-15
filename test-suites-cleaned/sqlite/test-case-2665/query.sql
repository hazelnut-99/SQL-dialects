SELECT a+b*2+c*3+d*4+e*5,
       a,
       abs(b-c),
       c,
       b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (a+b+c+d+e)/5
  FROM t1
 ORDER BY 3,6,4,7,1;
