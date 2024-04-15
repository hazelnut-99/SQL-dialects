SELECT d-e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       b,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE a>b
    OR b>c
    OR c BETWEEN b-2 AND d+2;
