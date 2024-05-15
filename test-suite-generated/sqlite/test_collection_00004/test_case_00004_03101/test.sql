SELECT a+b*2+c*3+d*4+e*5,
       c,
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND b>c
 ORDER BY 4,3,1,2;
