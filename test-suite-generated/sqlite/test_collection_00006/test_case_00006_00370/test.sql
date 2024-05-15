SELECT d,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d,
       d-e
  FROM t1
 WHERE b>c
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 2,3,6,7,4,1,5;
