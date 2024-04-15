SELECT b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       d-e,
       a+b*2+c*3
  FROM t1
 WHERE (a>b-2 AND a<b+2);
