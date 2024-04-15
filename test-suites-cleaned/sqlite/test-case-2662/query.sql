SELECT a,
       a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE a>b;
