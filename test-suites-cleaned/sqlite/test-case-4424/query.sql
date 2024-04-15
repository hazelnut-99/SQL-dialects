SELECT b-c,
       d,
       a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a-b
  FROM t1
 WHERE b>c
   AND (c<=d-2 OR c>=d+2)
   AND d NOT BETWEEN 110 AND 150;
