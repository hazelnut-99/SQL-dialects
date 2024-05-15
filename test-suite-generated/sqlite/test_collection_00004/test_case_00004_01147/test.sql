SELECT a+b*2+c*3+d*4,
       c-d,
       a+b*2+c*3,
       d,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c)
  FROM t1
 ORDER BY 5,4,7,6,1,2,3;
