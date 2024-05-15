SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE b>c
   AND c BETWEEN b-2 AND d+2
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 1;
