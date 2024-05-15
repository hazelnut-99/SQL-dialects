SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       d,
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>a AND e<b)
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 3,2,1,4;
