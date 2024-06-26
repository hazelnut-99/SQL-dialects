SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c),
       a-b,
       b-c
  FROM t1
 WHERE d>e
   AND (a>b-2 AND a<b+2)
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 2,1,3,5;
