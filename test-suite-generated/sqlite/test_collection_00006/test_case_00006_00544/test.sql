SELECT c-d,
       a+b*2+c*3+d*4,
       d,
       a-b,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END
  FROM t1
 ORDER BY 2,1,5,3,4;
