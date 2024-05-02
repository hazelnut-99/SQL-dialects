SELECT (a+b+c+d+e)/5,
       a,
       a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(b-c),
       d
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND (e>c OR e<d);
