SELECT abs(b-c),
       c,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 4,1,2;
