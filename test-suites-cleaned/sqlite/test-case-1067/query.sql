SELECT a+b*2+c*3+d*4+e*5,
       abs(b-c),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       b-c,
       a+b*2+c*3,
       a+b*2+c*3+d*4
  FROM t1
 WHERE c>d;
