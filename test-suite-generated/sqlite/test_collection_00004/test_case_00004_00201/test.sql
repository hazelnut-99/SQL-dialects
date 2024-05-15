SELECT a+b*2+c*3+d*4,
       a-b,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3,
       abs(b-c),
       d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR b>c
    OR d>e
 ORDER BY 3,4,5,6,1,2;
