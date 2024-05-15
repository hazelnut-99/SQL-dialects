SELECT a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 3,4,1,2;
