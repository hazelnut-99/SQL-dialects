SELECT b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2
  FROM t1
 WHERE a>b
   AND (e>a AND e<b)
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 2,1;
