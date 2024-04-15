SELECT a+b*2+c*3,
       d,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 4,3,1,2;
