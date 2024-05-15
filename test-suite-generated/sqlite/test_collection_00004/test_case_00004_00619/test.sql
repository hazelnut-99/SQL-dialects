SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3+d*4+e*5,
       b,
       (a+b+c+d+e)/5
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND (e>c OR e<d)
 ORDER BY 2,1;
