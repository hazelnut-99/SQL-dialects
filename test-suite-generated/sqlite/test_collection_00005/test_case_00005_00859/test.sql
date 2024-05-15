SELECT c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c,
       a,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (e>a AND e<b)
    OR b>c
    OR (c<=d-2 OR c>=d+2);
