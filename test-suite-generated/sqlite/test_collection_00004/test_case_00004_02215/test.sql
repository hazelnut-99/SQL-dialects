SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       e,
       a+b*2+c*3+d*4,
       a
  FROM t1
 ORDER BY 2,3;
