SELECT b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2,
       abs(b-c),
       a+b*2+c*3,
       c-d,
       a
  FROM t1
 ORDER BY 1,4,2,7,3,6,5;
