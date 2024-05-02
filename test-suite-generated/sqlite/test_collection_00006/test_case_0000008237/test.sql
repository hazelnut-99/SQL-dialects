SELECT a-b,
       c-d,
       a+b*2+c*3+d*4+e*5,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 ORDER BY 1,4,3,2,5;
