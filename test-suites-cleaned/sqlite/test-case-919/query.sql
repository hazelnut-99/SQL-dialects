SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4+e*5,
       abs(b-c),
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 4,3,2,1;
