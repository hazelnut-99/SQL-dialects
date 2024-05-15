SELECT c-d,
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d,
       b-c
  FROM t1
 WHERE c>d
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND a>b
 ORDER BY 2,4,3,5,1;
