SELECT abs(b-c),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND (e>a AND e<b)
   AND d>e
 ORDER BY 2,1,4,3;
