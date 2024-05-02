SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3,
       a+b*2,
       a,
       a-b,
       b,
       e
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130;
