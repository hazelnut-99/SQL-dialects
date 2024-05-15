SELECT abs(b-c),
       a+b*2+c*3+d*4+e*5,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       d,
       d-e
  FROM t1
 WHERE d>e
   AND (e>c OR e<d)
   AND (a>b-2 AND a<b+2);
