SELECT c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       abs(b-c),
       a+b*2,
       d-e
  FROM t1
 ORDER BY 4,3,1,7,2,5,6;
