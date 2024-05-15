SELECT a+b*2+c*3+d*4+e*5,
       d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(b-c),
       c-d
  FROM t1
 ORDER BY 2,1,3,4,5;
