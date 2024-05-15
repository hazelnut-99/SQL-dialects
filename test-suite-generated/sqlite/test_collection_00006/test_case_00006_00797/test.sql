SELECT (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       abs(a)
  FROM t1
 WHERE (e>a AND e<b)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 4,3,1,2;
