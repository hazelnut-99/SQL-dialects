SELECT c,
       b-c,
       a+b*2+c*3+d*4,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3,
       a,
       c-d
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND b IS NOT NULL;
