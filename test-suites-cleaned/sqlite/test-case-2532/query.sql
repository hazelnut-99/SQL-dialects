SELECT abs(b-c),
       c,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       a+b*2+c*3+d*4+e*5,
       a-b
  FROM t1
 WHERE (e>a AND e<b)
    OR (e>c OR e<d)
    OR c>d;
