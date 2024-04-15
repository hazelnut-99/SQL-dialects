SELECT a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       e,
       a,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b-c
  FROM t1
 ORDER BY 6,4,3,1,2,5;
