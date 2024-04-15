SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d,
       a+b*2+c*3+d*4,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR c>d
 ORDER BY 3,5,4,1,2;
