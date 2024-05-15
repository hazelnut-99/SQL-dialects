SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (e>a AND e<b)
   AND (a>b-2 AND a<b+2)
 ORDER BY 1;
