SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4+e*5,
       abs(b-c),
       d
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 4,3,2,1;
