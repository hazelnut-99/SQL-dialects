SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d,
       d
  FROM t1
 WHERE c>d
    OR (e>c OR e<d)
    OR (a>b-2 AND a<b+2);
