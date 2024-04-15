SELECT a+b*2+c*3+d*4+e*5,
       a,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4,
       b-c
  FROM t1
 WHERE d>e
 ORDER BY 4,1,5,3,2;
