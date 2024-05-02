SELECT a,
       c,
       a+b*2+c*3,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND (c<=d-2 OR c>=d+2);
