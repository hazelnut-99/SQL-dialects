SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3+d*4+e*5,
       a,
       a+b*2,
       c-d
  FROM t1
 WHERE b>c
   AND c>d
 ORDER BY 1,2;
