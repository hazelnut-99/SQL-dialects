SELECT a+b*2+c*3+d*4,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3,
       b,
       d
  FROM t1
 WHERE a>b
 ORDER BY 1,5,4,2,3;
