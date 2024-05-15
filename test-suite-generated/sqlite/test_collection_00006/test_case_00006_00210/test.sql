SELECT d,
       a,
       abs(b-c),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b-c,
       (a+b+c+d+e)/5,
       e
  FROM t1
 WHERE (e>c OR e<d)
    OR (a>b-2 AND a<b+2)
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 3,5,1,4,7,6,2;
