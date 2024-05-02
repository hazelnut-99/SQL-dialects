SELECT d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       c,
       e,
       a+b*2+c*3
  FROM t1;
