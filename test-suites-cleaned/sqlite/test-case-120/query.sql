SELECT b,
       abs(a)
  FROM t1
 WHERE (e>a AND e<b)
    OR c BETWEEN b-2 AND d+2
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 2,1;
