SELECT abs(b-c),
       c-d,
       d-e,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND d>e
   AND b IS NOT NULL;
