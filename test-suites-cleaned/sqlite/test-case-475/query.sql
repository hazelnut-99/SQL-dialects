SELECT b,
       a+b*2+c*3,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR (e>c OR e<d)
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 1,3,2,4;
