SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       d-e,
       a+b*2+c*3,
       a-b,
       a+b*2+c*3+d*4+e*5,
       b-c
  FROM t1
 WHERE b>c
   AND a>b
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 5,1,3,6,2,4;
