SELECT d-e,
       b,
       a+b*2+c*3+d*4,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b-c
  FROM t1
 WHERE (e>c OR e<d)
   AND b>c
 ORDER BY 2,3,1,4,5;
