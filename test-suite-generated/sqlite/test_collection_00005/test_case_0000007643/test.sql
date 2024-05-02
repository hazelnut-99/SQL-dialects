SELECT abs(a)
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND coalesce(a,b,c,d,e)<>0
   AND a IS NULL;
