SELECT abs(b-c),
       c,
       b,
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d
  FROM t1
 WHERE d>e
 ORDER BY 6,5,3,1,2,4;
