SELECT c,
       (a+b+c+d+e)/5,
       e,
       d-e,
       a+b*2,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE d>e
   AND c>d
   AND (e>a AND e<b)
 ORDER BY 3,4,6,7,1;
