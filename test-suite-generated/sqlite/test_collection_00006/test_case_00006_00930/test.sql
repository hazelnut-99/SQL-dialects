SELECT a-b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       e
  FROM t1
 WHERE (e>c OR e<d)
    OR (c<=d-2 OR c>=d+2)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 3,1,2;
