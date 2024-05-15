SELECT CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d,
       b,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c),
       a-b
  FROM t1
 WHERE d>e
    OR (a>b-2 AND a<b+2);
