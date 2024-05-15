SELECT a+b*2+c*3+d*4,
       d-e,
       a,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       (a+b+c+d+e)/5,
       abs(b-c)
  FROM t1
 ORDER BY 2,4,3,1,5,6;
