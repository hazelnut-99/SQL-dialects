SELECT a+b*2+c*3+d*4+e*5,
       e,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1;
