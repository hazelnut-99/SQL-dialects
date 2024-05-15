SELECT a+b*2+c*3+d*4+e*5,
       a,
       a+b*2+c*3+d*4,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);
