SELECT a,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c),
       c,
       a-b,
       abs(a)
  FROM t1
 ORDER BY 6,1,3,5,2,4;
