SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       (a+b+c+d+e)/5,
       c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 3,5,1,4,2;
