SELECT a+b*2+c*3
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR coalesce(a,b,c,d,e)<>0
    OR (e>c OR e<d);
