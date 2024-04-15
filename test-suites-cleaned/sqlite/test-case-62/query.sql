SELECT (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d,
       a+b*2+c*3+d*4,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (e>a AND e<b)
   AND c>d
 ORDER BY 2,5,6,4,1,3;
