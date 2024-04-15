SELECT a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a-b,
       c,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5,
       abs(b-c)
  FROM t1;
