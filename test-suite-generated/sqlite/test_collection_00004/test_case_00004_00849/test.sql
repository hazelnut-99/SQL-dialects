SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c),
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       d-e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 1,5,4,2,3;
