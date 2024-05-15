SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3,
       a+b*2
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND a>b
   AND b IS NOT NULL;
