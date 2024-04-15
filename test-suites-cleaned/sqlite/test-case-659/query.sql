SELECT (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c-d,
       a+b*2+c*3+d*4+e*5,
       d
  FROM t1
 WHERE a>b
   AND c BETWEEN b-2 AND d+2
 ORDER BY 5,6,3,7,2,4,1;
