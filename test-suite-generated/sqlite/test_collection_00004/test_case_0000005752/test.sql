SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND b>c
   AND (e>a AND e<b)
 ORDER BY 1,2;
