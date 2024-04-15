SELECT d-e,
       b,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE d>e
    OR d NOT BETWEEN 110 AND 150
    OR c BETWEEN b-2 AND d+2
 ORDER BY 3,4,2,1;
