SELECT d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4,
       abs(b-c),
       e
  FROM t1
 ORDER BY 3,4,5,1,2;
