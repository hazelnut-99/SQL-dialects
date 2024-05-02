SELECT c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b,
       a,
       a+b*2
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130;
