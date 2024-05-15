SELECT c-d,
       a,
       abs(b-c)
  FROM t1
 WHERE b>c
    OR d NOT BETWEEN 110 AND 150
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 3,1,2;
