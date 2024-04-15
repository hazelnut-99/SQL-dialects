SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       d-e,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b-c,
       c,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 2,5,6,3,1,4;
