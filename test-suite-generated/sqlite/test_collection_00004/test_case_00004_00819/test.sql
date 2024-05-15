SELECT a-b,
       a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3+d*4,
       abs(a)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 5,2,4;
