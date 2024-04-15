SELECT (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       a,
       e,
       a+b*2,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR c BETWEEN b-2 AND d+2;
