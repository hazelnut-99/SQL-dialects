SELECT a+b*2+c*3,
       c,
       b-c,
       a+b*2+c*3+d*4,
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5
  FROM t1
 WHERE (e>c OR e<d)
   AND c BETWEEN b-2 AND d+2
   AND (e>a AND e<b)
 ORDER BY 7,5,3,2,6,4,1;
