SELECT CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b-c,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c,
       a,
       a+b*2
  FROM t1
 WHERE (e>a AND e<b)
   AND (e>c OR e<d)
 ORDER BY 3,6,2,1,5,7,4;
