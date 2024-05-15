SELECT a,
       a+b*2,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR a IS NULL
    OR d>e;
