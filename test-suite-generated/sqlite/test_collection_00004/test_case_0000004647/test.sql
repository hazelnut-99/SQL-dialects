SELECT (a+b+c+d+e)/5,
       d,
       abs(b-c)
  FROM t1
 WHERE a>b
    OR (e>c OR e<d)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);
