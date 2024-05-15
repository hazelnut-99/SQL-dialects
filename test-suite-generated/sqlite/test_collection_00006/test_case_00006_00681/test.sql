SELECT d,
       c,
       a
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND d>e
   AND a>b
 ORDER BY 3,2,1;
