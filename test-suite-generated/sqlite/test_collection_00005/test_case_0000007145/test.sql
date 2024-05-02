SELECT a+b*2+c*3+d*4,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1;
