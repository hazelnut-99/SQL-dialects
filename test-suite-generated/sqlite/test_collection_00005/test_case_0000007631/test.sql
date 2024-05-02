SELECT (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2,
       b
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
    OR b IS NOT NULL;
