SELECT a+b*2+c*3+d*4+e*5,
       a,
       d,
       (a+b+c+d+e)/5,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 ORDER BY 1,2;
