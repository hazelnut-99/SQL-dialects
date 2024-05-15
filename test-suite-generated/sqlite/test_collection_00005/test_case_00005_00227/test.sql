SELECT c-d,
       a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       e
  FROM t1
 WHERE c>d
    OR a IS NULL
    OR (e>c OR e<d);
