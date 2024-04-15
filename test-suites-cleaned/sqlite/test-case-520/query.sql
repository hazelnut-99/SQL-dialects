SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       abs(a),
       d,
       c,
       abs(b-c)
  FROM t1
 WHERE a>b
    OR b>c
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 2,1,3,6,4,5;
