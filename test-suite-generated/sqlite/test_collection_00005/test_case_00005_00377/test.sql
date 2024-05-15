SELECT c-d,
       e,
       a+b*2+c*3+d*4,
       c,
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1;
