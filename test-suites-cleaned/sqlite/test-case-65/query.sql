SELECT c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 3,2,4,1;
