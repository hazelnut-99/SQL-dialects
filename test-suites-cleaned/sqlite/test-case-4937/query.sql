SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d,
       d
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR c>d
    OR (e>c OR e<d)
 ORDER BY 1,2;
