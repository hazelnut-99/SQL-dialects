SELECT c-d,
       a+b*2+c*3,
       d-e,
       a+b*2+c*3+d*4,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE b IS NOT NULL
    OR (e>a AND e<b)
    OR (e>c OR e<d);
