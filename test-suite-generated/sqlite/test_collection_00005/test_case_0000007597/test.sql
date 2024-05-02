SELECT a,
       a+b*2,
       a+b*2+c*3,
       b,
       abs(b-c),
       c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1;
