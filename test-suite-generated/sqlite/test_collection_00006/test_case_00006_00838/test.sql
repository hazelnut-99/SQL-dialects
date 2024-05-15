SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       a+b*2,
       abs(b-c),
       d
  FROM t1
 WHERE d>e
 ORDER BY 3,4,2,6,5,7,1;
