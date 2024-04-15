SELECT (a+b+c+d+e)/5,
       a+b*2+c*3,
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4,
       e,
       d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 6,4,7,5,2,3,1;
