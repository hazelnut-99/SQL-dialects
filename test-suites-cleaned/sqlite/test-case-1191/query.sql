SELECT a+b*2+c*3+d*4,
       b,
       a-b,
       e,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE a>b
    OR b IS NOT NULL;
