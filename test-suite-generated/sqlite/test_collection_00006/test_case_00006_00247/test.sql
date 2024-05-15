SELECT a,
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 2,4,5,6,1,3;
