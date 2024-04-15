SELECT a+b*2,
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c),
       a-b
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND c>d
 ORDER BY 6,5,4,1,3,2;
