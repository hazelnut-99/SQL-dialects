SELECT b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c,
       a+b*2,
       d-e,
       a+b*2+c*3+d*4,
       c-d
  FROM t1
 WHERE a IS NULL
   AND c>d;
