SELECT e,
       c-d,
       (a+b+c+d+e)/5,
       a+b*2,
       b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (a>b-2 AND a<b+2);
