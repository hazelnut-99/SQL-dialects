SELECT a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3,
       a
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND c>d;
