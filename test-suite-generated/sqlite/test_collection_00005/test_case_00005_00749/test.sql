SELECT a,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4,
       abs(b-c)
  FROM t1
 WHERE a IS NULL
   AND coalesce(a,b,c,d,e)<>0;
