SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c,
       a+b*2+c*3
  FROM t1;
