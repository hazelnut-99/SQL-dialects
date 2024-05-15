SELECT a,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4+e*5,
       d
  FROM t1
 WHERE a IS NULL;
