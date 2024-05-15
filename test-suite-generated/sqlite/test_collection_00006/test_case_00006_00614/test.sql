SELECT c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND a>b
   AND (e>a AND e<b)
 ORDER BY 2,1;
