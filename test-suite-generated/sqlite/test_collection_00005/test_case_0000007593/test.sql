SELECT abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND (e>c OR e<d)
   AND (a>b-2 AND a<b+2);
