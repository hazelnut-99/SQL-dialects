SELECT a+b*2,
       a+b*2+c*3,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 ORDER BY 4,1,2,3;
