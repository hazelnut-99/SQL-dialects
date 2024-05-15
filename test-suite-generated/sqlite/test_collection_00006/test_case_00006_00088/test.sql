SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3,
       d-e,
       b,
       a,
       c,
       a+b*2
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR (e>a AND e<b)
    OR d>e
 ORDER BY 5,6,3,7,2,1,4;
