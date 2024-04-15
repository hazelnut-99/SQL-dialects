SELECT a+b*2,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b,
       c-d
  FROM t1;
