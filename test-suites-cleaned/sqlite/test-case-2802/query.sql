SELECT abs(b-c),
       d,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4
  FROM t1
 WHERE (e>a AND e<b)
    OR (a>b-2 AND a<b+2)
    OR d NOT BETWEEN 110 AND 150;
