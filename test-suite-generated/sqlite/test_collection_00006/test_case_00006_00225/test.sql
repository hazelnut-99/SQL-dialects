SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       a+b*2+c*3,
       abs(b-c),
       c-d,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 3,2,6,4,5,1;
