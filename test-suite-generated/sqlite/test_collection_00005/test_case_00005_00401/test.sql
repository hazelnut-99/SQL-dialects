SELECT a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND d NOT BETWEEN 110 AND 150
   AND d>e;
