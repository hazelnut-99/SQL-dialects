SELECT (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2,
       c,
       a+b*2+c*3+d*4+e*5,
       d-e
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR c>d
    OR b>c
 ORDER BY 4,2,3,5,1;
