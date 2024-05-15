SELECT b,
       a-b,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND c>d
 ORDER BY 1,2,3,5,4;
