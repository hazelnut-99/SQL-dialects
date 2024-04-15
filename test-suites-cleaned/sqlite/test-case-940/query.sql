SELECT b-c,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a,
       a+b*2,
       a+b*2+c*3,
       e
  FROM t1
 WHERE (e>c OR e<d)
    OR c BETWEEN b-2 AND d+2
 ORDER BY 1,5,2,4,6,3;
