SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2+c*3+d*4,
       a,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2,
       c-d
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND d>e
   AND (e>c OR e<d)
 ORDER BY 6,3,2,1,5;
