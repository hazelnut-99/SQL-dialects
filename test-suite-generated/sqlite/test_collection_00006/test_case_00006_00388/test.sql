SELECT a+b*2+c*3,
       d-e,
       a+b*2+c*3+d*4,
       d,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       abs(a)
  FROM t1
 WHERE b>c
   AND (e>c OR e<d)
 ORDER BY 2,3,4,5,6,1;
