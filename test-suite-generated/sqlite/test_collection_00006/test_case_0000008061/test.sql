SELECT a+b*2+c*3,
       c-d,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE d>e
    OR (c<=d-2 OR c>=d+2)
    OR c BETWEEN b-2 AND d+2
 ORDER BY 1,2,4,3;
