SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2,
       d,
       abs(b-c)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 4,2,3,1;
