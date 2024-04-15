SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2,
       d,
       a,
       a+b*2+c*3+d*4,
       c-d
  FROM t1;
