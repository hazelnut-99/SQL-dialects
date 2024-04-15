SELECT a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       (a+b+c+d+e)/5,
       b-c,
       c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 5,1,4,3,2;
