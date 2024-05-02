SELECT abs(b-c),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE b IS NOT NULL
    OR coalesce(a,b,c,d,e)<>0
    OR a IS NULL;
