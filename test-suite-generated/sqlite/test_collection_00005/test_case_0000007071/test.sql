SELECT b,
       a+b*2+c*3+d*4,
       c-d,
       a,
       b-c,
       a+b*2,
       d-e
  FROM t1
 WHERE (e>a AND e<b)
    OR b IS NOT NULL
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b);
