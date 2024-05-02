SELECT b,
       abs(b-c)
  FROM t1
 WHERE c>d
   AND a>b
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 2,1;
