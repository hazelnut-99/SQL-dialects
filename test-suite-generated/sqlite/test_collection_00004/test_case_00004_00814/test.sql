SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4+e*5,
       c,
       a+b*2
  FROM t1
 WHERE (e>a AND e<b)
   AND b>c;
