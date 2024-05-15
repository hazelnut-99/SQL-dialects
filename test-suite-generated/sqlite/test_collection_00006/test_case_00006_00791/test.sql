SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4+e*5,
       a-b
  FROM t1
 ORDER BY 3,1,2;
