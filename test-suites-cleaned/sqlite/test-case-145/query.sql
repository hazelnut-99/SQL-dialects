SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e,
       a+b*2+c*3+d*4,
       c,
       a+b*2
  FROM t1
 ORDER BY 7,3,2,6,4,5,1;
