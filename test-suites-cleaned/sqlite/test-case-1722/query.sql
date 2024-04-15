SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5,
       a-b
  FROM t1
 WHERE a>b
    OR d NOT BETWEEN 110 AND 150;
