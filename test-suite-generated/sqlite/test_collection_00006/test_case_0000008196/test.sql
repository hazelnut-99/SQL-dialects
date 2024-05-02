SELECT abs(b-c),
       (a+b+c+d+e)/5,
       d,
       b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c
  FROM t1
 ORDER BY 4,6,2,1,5,3;
