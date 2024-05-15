SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c,
       c-d,
       a+b*2+c*3,
       abs(b-c)
  FROM t1
 WHERE (e>a AND e<b);
