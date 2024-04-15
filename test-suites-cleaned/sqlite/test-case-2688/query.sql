SELECT c,
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5,
       a-b,
       a+b*2+c*3
  FROM t1
 WHERE c>d
    OR (e>c OR e<d);
