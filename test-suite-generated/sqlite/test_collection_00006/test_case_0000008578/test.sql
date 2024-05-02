SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c,
       b,
       d-e,
       d,
       a-b
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 6,3,2,1,4,5;
