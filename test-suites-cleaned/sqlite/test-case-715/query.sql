SELECT a+b*2,
       abs(b-c),
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 ORDER BY 3,2,1,4;
