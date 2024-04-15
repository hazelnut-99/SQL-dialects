SELECT b,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 5,2,4,1,3,6;
