SELECT c-d,
       a+b*2+c*3+d*4+e*5,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c,
       d-e,
       abs(a)
  FROM t1
 WHERE (e>a AND e<b);
