SELECT d,
       c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       a+b*2,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (e>a AND e<b)
   AND c BETWEEN b-2 AND d+2
 ORDER BY 5,1,3,6,4,2;
