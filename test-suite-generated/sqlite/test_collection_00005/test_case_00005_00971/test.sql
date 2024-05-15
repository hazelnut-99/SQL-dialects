SELECT (a+b+c+d+e)/5,
       a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a-b,
       abs(b-c)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND c>d;
