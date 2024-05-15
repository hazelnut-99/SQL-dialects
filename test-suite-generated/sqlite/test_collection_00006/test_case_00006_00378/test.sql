SELECT (a+b+c+d+e)/5,
       a,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       b-c,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
 ORDER BY 6,4,5,1,2,3;
